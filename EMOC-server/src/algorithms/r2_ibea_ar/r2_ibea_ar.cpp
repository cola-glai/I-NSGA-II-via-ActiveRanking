//
// Created by gylai on 23-2-24.
// Contact: Lai Guiyu <guiyulai.chn@gmail.com>
// COLA-Lab@UESTC
//

#include "algorithms/r2_ibea_ar/r2_ibea_ar.h"

#include <cmath>
#include <iostream>
#include <algorithm>
#include <fstream>
#include <cstring>

#include "core/global.h"
#include "core/tournament_selection.h"
#include "operator/sbx.h"
#include "operator/mutation.h"
#include "random/random.h"

#include "core/utility.h"
#include "core/uniform_point.h"

using namespace std;


namespace emoc {


    R2_IBEA_AR::R2_IBEA_AR(Problem *problem, int thread_num):
            Algorithm(problem, thread_num),
            kappa_(0.005),
            ideal_point_(new double[g_GlobalSettings->obj_num_]),
            reference_point_(new double[g_GlobalSettings->obj_num_]),
            lambda_(nullptr),
            weight_(nullptr),
            step_size_(0.2),
            retention_rate_(0.2),
            preference_score_(new double[g_GlobalSettings->population_num_]),
            is_w_approximate_convergenced_(false)
    {

    }

    R2_IBEA_AR::~R2_IBEA_AR()
    {
        for (int i = 0; i < g_GlobalSettings->population_num_; ++i)
        {
            delete[] lambda_[i];
            lambda_[i] = nullptr;
        }
        delete[] lambda_;
        delete[] weight_;
        delete[] ideal_point_;
        delete[] reference_point_;
        delete[] preference_score_;
        lambda_ = nullptr;
        weight_ = nullptr;
        ideal_point_ = nullptr;
        reference_point_ = nullptr;
        preference_score_ = nullptr;
    }

    void R2_IBEA_AR::Run()
    {
        Initialization();

        if (g_GlobalSettings->output_interval_)
        {
            TrackPopulation(g_GlobalSettings->iteration_num_);
        }

        while (!g_GlobalSettings->IsTermination())
        {
            // begin each iteration
            g_GlobalSettings->iteration_num_++;

            // consultation, preference elicitation
            if (g_GlobalSettings->tau_&&(g_GlobalSettings->iteration_num_ % g_GlobalSettings->tau_ == 0))
            {
                Consultation_PreferenceElicitation();
            }

            // generate offspring population
            Crossover(g_GlobalSettings->parent_population_.data(), g_GlobalSettings->offspring_population_.data());
            MutationPop(g_GlobalSettings->offspring_population_.data(), 2 * g_GlobalSettings->population_num_ / 2, g_GlobalSettings);
            EvaluatePop(g_GlobalSettings->offspring_population_.data(), 2 * g_GlobalSettings->population_num_ / 2);
            MergePopulation(g_GlobalSettings->parent_population_.data(), g_GlobalSettings->population_num_, g_GlobalSettings->offspring_population_.data(),
                            2 * g_GlobalSettings->population_num_ / 2, g_GlobalSettings->mixed_population_.data());

            // update the reference point
            //UpdateReferencePoint(g_GlobalSettings->mixed_population_.data(),2 * g_GlobalSettings->population_num_, g_GlobalSettings->obj_num_, reference_point_);

            // update ideal point
            UpdateIdealPoint(g_GlobalSettings->offspring_population_.data(),
                             g_GlobalSettings->population_num_, g_GlobalSettings->obj_num_, ideal_point_);

            // select next generation's population
            EnvironmentalSelection(g_GlobalSettings->parent_population_.data(), g_GlobalSettings->mixed_population_.data());

            // record the population every interval generations and the first and last genration
            if (((g_GlobalSettings->output_interval_)&&
                 (g_GlobalSettings->iteration_num_ % g_GlobalSettings->output_interval_ == 0))
                || g_GlobalSettings->IsTermination())
            {
                TrackPopulation(g_GlobalSettings->iteration_num_);
            }
        }

    }

    void R2_IBEA_AR::Initialization()
    {
        // initialize parent population
        g_GlobalSettings->InitializePopulation(g_GlobalSettings->parent_population_.data(), g_GlobalSettings->population_num_);
        EvaluatePop(g_GlobalSettings->parent_population_.data(), g_GlobalSettings->population_num_);

        // set weight
        weight_ = SetWeight(g_GlobalSettings->weight_stringType_);

        // set golden point
        w_star_ = SetGold(g_GlobalSettings->gold_stringType_);

        // set step size
        step_size_ = g_GlobalSettings->step_size_;

        // load uniform weight vectors from *.txt
        char file[256];
        sprintf(file, "./UniformWeights/%dd_%d.txt",g_GlobalSettings->obj_num_, g_GlobalSettings->population_num_);
        lambda_ = LoadUniformWeights(g_GlobalSettings->population_num_, g_GlobalSettings->obj_num_, file);

        // initialize the reference point z* to be the utopian point (0, 0, ..., 0)
        InitializeReferencePoint(reference_point_, g_GlobalSettings->obj_num_);

        // initialize the ideal point
        UpdateIdealpoint(g_GlobalSettings->parent_population_.data(),
                         g_GlobalSettings->population_num_, ideal_point_, g_GlobalSettings->obj_num_);
    }

    void R2_IBEA_AR::Crossover(Individual **parent_pop, Individual **offspring_pop)
    {
        // generate random permutation index for tournment selection
        int *index1 = new int[g_GlobalSettings->population_num_];
        int *index2 = new int[g_GlobalSettings->population_num_];
        random_permutation(index1, g_GlobalSettings->population_num_);
        random_permutation(index2, g_GlobalSettings->population_num_);

        for (int i = 0; i < g_GlobalSettings->population_num_ / 2; ++i)
        {
            Individual *parent1 = TournamentByBiR2Indicator(parent_pop[index1[2 * i]], parent_pop[index1[2 * i + 1]]);
            Individual *parent2 = TournamentByBiR2Indicator(parent_pop[index2[2 * i]], parent_pop[index2[2 * i + 1]]);
            SBX(parent1, parent2, offspring_pop[2 * i], offspring_pop[2 * i + 1], g_GlobalSettings);
        }
        delete[] index1;
        index1 = nullptr;
        delete[] index2;
        index2 = nullptr;
    }

    double R2_IBEA_AR::CalEpsIndicator(Individual *ind1, Individual *ind2)
    {
        double max_eps = 0.0, temp_eps = 0.0;
        double r = g_GlobalSettings->dec_upper_bound_[0] - g_GlobalSettings->dec_lower_bound_[0];

        max_eps = (ind1->obj_[0] - g_GlobalSettings->dec_upper_bound_[0]) / r - (ind2->obj_[0] - g_GlobalSettings->dec_upper_bound_[0]) / r;
        for (int i = 1; i < g_GlobalSettings->obj_num_; ++i)
        {
            r = g_GlobalSettings->dec_upper_bound_[i] - g_GlobalSettings->dec_lower_bound_[1];
            temp_eps = (ind1->obj_[i] - g_GlobalSettings->dec_upper_bound_[i]) / r - (ind2->obj_[i] - g_GlobalSettings->dec_upper_bound_[i]) / r;

            if (temp_eps > max_eps)
                max_eps = temp_eps;
        }

        return max_eps;
    }

    void R2_IBEA_AR::CalFitness(Individual **pop, int pop_num, double *fitness)
    {
        // determine indicator values and their maximum
        for (int i = 0; i < pop_num; ++i)
        {
            for (int j = 0; j < pop_num; ++j)
            {
                fitness[i * pop_num + j] = CalBiR2Indicator(pop[i], pop[j]);
            }
        }

        // calculate for each pair of individuals the corresponding value component
        for (int i = 0; i < pop_num;++i)
        {
            for (int j = 0; j < pop_num; j++)
            {
                fitness[i * pop_num + j] = -1 * exp(-1 * fitness[i * pop_num + j] / kappa_);
            }
        }

        // set individual's fitness
        for (int i = 0; i < pop_num; ++i)
        {
            double sum = 0;
            for (int j = 0; j < pop_num; ++j)
            {
                if (i != j)
                {
                    sum += fitness[j * pop_num + i];
                }
            }
            pop[i]->fitness_ = sum;
        }
    }

    void R2_IBEA_AR::EnvironmentalSelection(Individual **parent_pop, Individual **mixed_pop)
    {
        int mixed_popnum = 2 * g_GlobalSettings->population_num_;

        // calculate fitness and store it in fitness array
        double *fitness = new double[mixed_popnum * mixed_popnum];
        CalFitness(mixed_pop, mixed_popnum, fitness);

        // select next generation's individuals
        int worst = -1;
        std::vector<int> flag(mixed_popnum,0);

        for (int i = g_GlobalSettings->population_num_; i > 0; --i)
        {
            int j = 0;
            for (j = 0; j < mixed_popnum && flag[j] == 1; ++j);
            worst = j;

            for (j = j + 1; j < mixed_popnum; ++j)
            {
                if (flag[j] != 1)
                {
                    if (mixed_pop[j]->fitness_ < mixed_pop[worst]->fitness_)
                        worst = j;
                }
            }

            for (j = 0; j < mixed_popnum; ++j)
            {
                if (flag[j] != 1)
                {
                    mixed_pop[j]->fitness_ -= fitness[worst * mixed_popnum + j];
                }
            }

            flag[worst] = 1;
        }

        int count = 0;
        for (int i = 0; i < mixed_popnum; ++i)
        {
            if (flag[i] != 1)
            {
                CopyIndividual(mixed_pop[i], parent_pop[count++]);
            }
        }
        if (fitness)
        {
            delete[] fitness;
            fitness= nullptr;
        }

    }

    double R2_IBEA_AR::CalR2Indicator(Individual *x)
    {
        double res = 0;
        double a, ChebycheffValue;
        for (int i = 0; i < g_GlobalSettings->population_num_; ++i)
        {
            ChebycheffValue = -INF;
            for (int j = 0; j < g_GlobalSettings->obj_num_; ++j)
            {
                a = fabs(ideal_point_[j] - x->obj_[j]) / lambda_[i][j];
                if (a > ChebycheffValue)
                {
                    ChebycheffValue = a;
                }
            }
            res += ChebycheffValue;
        }
        res /= g_GlobalSettings->population_num_;
        return res;
    }

    double R2_IBEA_AR::CalR2Indicator(Individual *x, Individual *y)
    {
        double res = 0;
        double a, b, ChebycheffValue_x, ChebycheffValue_y;
        for (int i = 0; i < g_GlobalSettings->population_num_; ++i)
        {
            ChebycheffValue_x = -INF;
            ChebycheffValue_y = -INF;
            for (int j = 0; j < g_GlobalSettings->obj_num_; ++j)
            {
                a = fabs(ideal_point_[j] - x->obj_[j]) / lambda_[i][j];
                b = fabs(ideal_point_[j] - y->obj_[j]) / lambda_[i][j];
                if (a > ChebycheffValue_x)
                {
                    ChebycheffValue_x = a;
                }
                if (b > ChebycheffValue_y)
                {
                    ChebycheffValue_y = b;
                }
            }
            if (ChebycheffValue_x < ChebycheffValue_y)
            {
                res += ChebycheffValue_x;
            }
            else
            {
                res += ChebycheffValue_y;
            }
        }
        res /= g_GlobalSettings->population_num_;
        return res;
    }

    double R2_IBEA_AR::CalBiR2Indicator(Individual *x, Individual *y)
    {
        return CalR2Indicator(x) - CalR2Indicator(x, y);
    }

    Individual* R2_IBEA_AR::TournamentByBiR2Indicator(Individual *ind1, Individual *ind2)
    {//TODO: debug
        double I_R2_1,I_R2_2;
        I_R2_1 = CalBiR2Indicator(ind1, ind2);
        I_R2_2 = CalBiR2Indicator(ind2, ind1);
        /*if (I_R2_1 < I_R2_2)
        {
            #if DEBUG
            std::cout<<"[INFO] Select parent 1."<<std::endl;
            #endif
            return ind1;
        }
        else if(I_R2_1 > I_R2_2)
        {
            #if DEBUG
            std::cout<<"[INFO] Select parent 2."<<std::endl;
            #endif
            return ind2;
        }*/
        if (I_R2_1 == 0)
        {
            return ind1;
        }
        else if(I_R2_2 == 0)
        {
            return ind2;
        }
        else
        {
            #if DEBUG
            std::cout<<"[INFO] Select parent randomly."<<std::endl;
            #endif
            if (randomperc() <= 0.5)
            {
                return (ind1);
            }
            else
            {
                return (ind2);
            }
        }
    }

    void R2_IBEA_AR::BiasingWeightSet()
    {
#if UsingGoldenFunction
        for (int i = 0; i < g_GlobalSettings->population_num_; ++i)
        {
            score_RankNet_[i] = 1 - CalInverseChebycheff(g_GlobalSettings->parent_population_[i], weight_, g_GlobalSettings->obj_num_);
        }
#endif

        //score: the bigger, the better
        std::vector<double> scores(preference_score_,preference_score_+g_GlobalSettings->population_num_);
        std::vector<size_t> idx(scores.size());
        iota(idx.begin(), idx.end(), 0);
        sort(idx.begin(), idx.end(),
             [&scores](size_t index_1, size_t index_2) { return scores[index_1] > scores[index_2]; });

        int solvedNum, currTuned, idx_of_nearest, currIndIdx, maxAttractionNum, nPromisingWeight;
        nPromisingWeight = (int)(g_GlobalSettings->population_num_*retention_rate_);
        maxAttractionNum = ceil((double)(g_GlobalSettings->population_num_- nPromisingWeight) / nPromisingWeight);
        int currPromisingWeightIndex[nPromisingWeight];
        double minDis, dis, minChebycheff, tempChebycheff;
        bool flag[g_GlobalSettings->population_num_];
        memset(flag, true, g_GlobalSettings->population_num_ * sizeof(bool));// true: adjustable, false: has been adjusted

        for (int i = 0; i < nPromisingWeight; ++i)
        {
            currIndIdx = idx[i];
            minChebycheff = INF;
            for (int j = 0; j < g_GlobalSettings->population_num_; ++j)
            {
                if (flag[j])
                {
                    tempChebycheff = CalInverseChebycheff(g_GlobalSettings->parent_population_[currIndIdx],
                                                          lambda_[j], ideal_point_, g_GlobalSettings->obj_num_);
                    if (tempChebycheff < minChebycheff)
                    {
                        minChebycheff = tempChebycheff;
                        currPromisingWeightIndex[i] = j;
                    }
                }
            }
            flag[currPromisingWeightIndex[i]] = false;
        }
        solvedNum = nPromisingWeight;

        for (int i = 0; (i < nPromisingWeight) && (solvedNum < g_GlobalSettings->population_num_); ++i)
        {
            currTuned = 0;
            while (currTuned<maxAttractionNum && (solvedNum < g_GlobalSettings->population_num_))
            {
                minDis = INF;
                //find the nearest weight vector from the remaining set of weight vectors
                for (int j = 0; j < g_GlobalSettings->population_num_; ++j)
                {
                    if (flag[j])
                    {
                        dis = CalEuclidianDistance(lambda_[currPromisingWeightIndex[i]], lambda_[j], g_GlobalSettings->obj_num_);
                        if (dis < minDis)
                        {
                            minDis = dis;
                            idx_of_nearest = j;
                        }
                    }
                }
                for (int j = 0; j < g_GlobalSettings->obj_num_; ++j)
                {
                    lambda_[idx_of_nearest][j] += step_size_ * (lambda_[currPromisingWeightIndex[i]][j] - lambda_[idx_of_nearest][j]);
                }
                flag[idx_of_nearest] = false;//solved
                solvedNum++;
                currTuned++;
            }
        }
#if DEBUG
        std::cout<<"[INFO] Adjusted weight vectors: \n";
        for (int i = 0; i < g_GlobalSettings->population_num_; ++i)
        {
            for (int j = 0; j < g_GlobalSettings->obj_num_; ++j)
            {
                std::cout<<lambda_[i][j]<<"\t";
            }
            std::cout<<std::endl;
        }
#endif
    }

    void R2_IBEA_AR::Consultation_PreferenceElicitation()
    {
        if (!is_w_approximate_convergenced_)
        {// 近似参考点没有收敛，继续主动排序，否则直接使用近似参考点做排序
            active_ranking(g_GlobalSettings->parent_population_.data());
        }

        if (w_approximate_.n_rows != 0)
        {// 已经近似出了参考点的位置，才可以使用偏好模型，否则本次交互之后不使用偏好排序模型更新权重向量
            // 利用偏好排序模型给种群中的候选解赋予偏好得分

            // set preference according to w_approximate
            set_preference_score();

            // 根据偏好排序模型给出的排序更新权重向量
//            PreferredWeightGenerator();
            BiasingWeightSet();
        }
    }

    void R2_IBEA_AR::set_preference_score()
    {
        int dimension = g_GlobalSettings->obj_num_;
        if (w_approximate_.n_rows != dimension)
        {
            std::cerr<<"[ERROR] w_approximate_.n_rows != dimension !!!"<<std::endl;
            exit(-1);
        }
        double w_approximate_double[dimension];
        for (int i = 0; i < dimension; ++i)
        {
            w_approximate_double[i] = w_approximate_(i);
        }

        for (int i = 0; i < g_GlobalSettings->population_num_; ++i)
        {
            preference_score_[i] = -1.0 * CalEuclidianDistance(g_GlobalSettings->parent_population_[i]->obj_, w_approximate_double, dimension);
        }
    }



    // generate preferred weight vectors via hit-and-run
    void R2_IBEA_AR::PreferredWeightGenerator()
    {
        //score: the bigger, the better
        std::vector<double> scores(preference_score_,preference_score_+g_GlobalSettings->population_num_);
        std::vector<size_t> idx(scores.size());
        iota(idx.begin(), idx.end(), 0);
        sort(idx.begin(), idx.end(),
             [&scores](size_t index_1, size_t index_2) { return scores[index_1] > scores[index_2]; });

        int nPromisingWeight = (int)(g_GlobalSettings->population_num_*retention_rate_);
        double boundaries[g_GlobalSettings->obj_num_][2];//boundaries for hitandrun
        //initialize the boundaries
        for (int i = 0; i < g_GlobalSettings->obj_num_; ++i)
        {
            boundaries[i][0] = 1.0; // lower
            boundaries[i][1] = 0.0; //upper
        }

        for (int i = 0; i < g_GlobalSettings->obj_num_; ++i)
        {
            for (int j = 0; j < nPromisingWeight; ++j)
            {
                boundaries[i][0] = min(boundaries[i][0], lambda_[idx[j]][i]);
                boundaries[i][1] = max(boundaries[i][1], lambda_[idx[j]][i]);
            }
        }

        char inputFile[100];
        char hitandrunResultFile[100];
        char shFile[100];


        sprintf(inputFile, "./hitandrun/input_%dD_run%d.txt", \
        g_GlobalSettings->obj_num_, g_GlobalSettings->run_id_);

        sprintf(hitandrunResultFile, "./hitandrun/hitandrunRes_%dD_run%d.txt", \
        g_GlobalSettings->obj_num_, g_GlobalSettings->run_id_);

        sprintf(shFile, "./hitandrun/run_%dD_run%d.sh", g_GlobalSettings->obj_num_, g_GlobalSettings->run_id_);

        std::ofstream out;
        out.open(inputFile);
        for (int i = 0; i < g_GlobalSettings->obj_num_; ++i)
        {
            for (int j = 0; j < g_GlobalSettings->obj_num_; ++j)
            {
                out<<(i==j)<<" ";
            }
            out<<">= "<<boundaries[i][0]<<std::endl;
            for (int j = 0; j < g_GlobalSettings->obj_num_; ++j)
            {
                out<<(i==j)<<" ";
            }
            out<<"<= "<<boundaries[i][1]<<std::endl;
        }
        for (int i = 0; i < g_GlobalSettings->obj_num_; ++i)
        {
            out<<1<<" ";
        }
        out<<"= "<<1;
        out.flush();
        out.close();

        int nGenerateWeight = g_GlobalSettings->population_num_ - nPromisingWeight;

        out.open(shFile);
        char shell[1024];
        //sprintf(shell, "cat %s | java -jar polyrun-1.0.0-jar-with-dependencies.jar -n %d > %s\nwait\nexit 99\n[ $? -eq 99 ] || exit", inputFile, g_GlobalSettings->population_num_, hitandrunFile);
        sprintf(shell, "java -jar polyrun-1.0.0-jar-with-dependencies.jar -i %s -n %d > %s\n"
                       "wait\n"
                       "exit",
                inputFile, nGenerateWeight, hitandrunResultFile);
        out<<shell;
        out.flush();
        out.close();
        char giveRight[100];
        sprintf(giveRight, "chmod 777 %s", shFile);
        system(giveRight);

        double **tmp;

        tmp = HitAndRun(nGenerateWeight, g_GlobalSettings->obj_num_, shFile, hitandrunResultFile);

        // reserve promising weight vector
        for (int i = nPromisingWeight; i < g_GlobalSettings->population_num_; ++i)
        {
            for (int j = 0; j < g_GlobalSettings->obj_num_; ++j)
            {
                lambda_[idx[i]][j] = tmp[i - nPromisingWeight][j];
            }
        }

        for (int i = 0; i < nGenerateWeight; ++i)
        {
            delete[] tmp[i];
            tmp[i] = nullptr;
        }
        delete[] tmp;
    }


    // active ranking related
    void R2_IBEA_AR::unique_matrix(arma::mat &objects)
    {
        std::vector<arma::uword> idx;

        arma::uword n = objects.n_rows;
        arma::uword d = objects.n_cols;

        std::set<arma::uword> solved_set;
        for (arma::uword i = 0; i < n; ++i)
        {
            if (solved_set.find(i) != solved_set.end())
            {
                continue;
            }
            for (arma::uword j = i + 1; j < n; ++j)
            {
                arma::uword equal_num = 0;
                for (arma::uword k = 0; k < d; ++k)
                {
                    if (fabs(objects(i, k) - objects(j, k)) < 1e-6)
                    {
                        ++equal_num;
                    }
                    else
                    {
                        break;
                    }
                }

                if (equal_num == d)
                {
                    idx.push_back(j);
                    solved_set.insert(j);
                }
            }
        }

        if (!idx.empty())
        {
            std::cout<<"<info> remove "<<idx.size()<<" duplicate row(s)."<<std::endl;
            arma::uvec indices(idx);
            objects.shed_rows(indices);
        }
    }

    void R2_IBEA_AR::active_ranking(Individual **parent_pop)
    {
        // std::cout<<"<info> arrive [R2_IBEA_AR::active_ranking]"<<std::endl;
        arma::vec w_old = w_approximate_;

        arma::mat objects = arma::zeros(g_GlobalSettings->population_num_, g_GlobalSettings->obj_num_);

        // initialize objects matrix
        for (int i = 0; i < g_GlobalSettings->population_num_; ++i)
        {
            for (int j = 0; j < g_GlobalSettings->obj_num_; ++j)
            {
                objects(i, j) = parent_pop[i]->obj_[j];
            }
        }

        // FIXED: remove duplicate objects
        unique_matrix(objects);

        int cnt_ambiguous_query = 0;
        int cnt_unambiguous_query = 0;
        int cnt_total_pairwise_comparison = 0;

        int n = objects.n_rows; // number of objects
        int d = objects.n_cols; // dimension

//        printf("<info> matrix of objects(%dx%d):\n", n, d);
//        std::cout<<objects<<std::endl;
//
//         printf("<info> reference point(ground truth):\n");
//         std::cout<<w_star_<<std::endl;
//        printf("<info> preference weight vector(ground truth):\n");
//        for (int i = 0; i < g_GlobalSettings->obj_num_; ++i)
//        {
//            std::cout<<weight_[i]<<" ";
//        }
//        std::cout<<std::endl;

        // cube(n_rows, n_cols, n_slices, fill_form)
        // each slice is a matrix
        // n (d+1, n) matrices
        arma::cube H(d + 1, n, n, arma::fill::zeros);
        build_hyperplanes(objects, H);


        // use random indices to randomly enumerate the objects
        arma::uvec hi = arma::randperm(n);
        // uvec hi = {4,1,8,7,5,2,3,0,9,6};
        // std::cout<<"hi: "<<hi<<std::endl;

        // Qh: preference label of pairwise comparisons
        arma::Mat<int> Qh = arma::zeros<arma::Mat<int>>(n,n);
        // std::cout<<"Qh: "<<Qh<<std::endl;
        arma::umat known;

        int jj = 0;
        while (jj < n - 1)
        {
            jj = jj + 1;

            // logical array
            arma::uvec goodInds(jj, arma::fill::zeros);

            // undefined preference relations related to object{hi(jj)} in Qh
            get_undefined_preference(Qh, hi, jj, goodInds);
            // std::cout<<"goodInds: "<<goodInds<<std::endl;

            while(sum(goodInds) > 0)
            {
                // std::cout<<"<info> sum(goodInds): "<<sum(goodInds)<<std::endl;

                arma::uvec toSort = get_toSort(goodInds);
                // uvec toSort2 = linspace<uvec>(0, jj - 1, jj);
                // std::cout<<"toSort:"<<toSort<<std::endl;
                arma::Mat<int> Qhyp = Qh(hi(toSort), hi(toSort));
                // std::cout<<"Qhyp: "<<Qhyp<<std::endl;

                arma::uvec index = compare_sort(goodInds, Qhyp);
                // std::cout<<"index: "<<index<<std::endl;

                arma::uvec list = toSort(index);
                // std::cout<<"list: "<<list<<std::endl;
                arma::uword bis = list.n_elem / 2;
                // std::cout<<"bis: "<<bis<<std::endl;
                arma::uword ii = list(bis);
                // std::cout<<"ii: "<<ii<<std::endl;
                arma::uvec below;
                if (bis >= 1)
                {
                    below = list.rows(0, bis - 1);
                }
                arma::uvec above;
                if (bis + 1 < list.n_elem)
                {
                    above = list.rows(bis + 1, list.n_elem - 1);
                }

//                std::cout<<"<info> get below and above finished\n";
//                std::cout<<"below.n_elem: "<<below.n_elem<<std::endl;
//                std::cout<<"below.n_rows: "<<below.n_rows<<std::endl;
//                std::cout<<"above.n_rows: "<<above.n_rows<<std::endl;

                arma::uword i = hi(ii);
                arma::uword j = hi(jj);
                cnt_total_pairwise_comparison++;
                // std::cout<<"i: "<<i<<",j: "<<j<<std::endl;

                arma::mat X = arma::zeros(known.n_rows, d + 1);
                arma::Mat<int> Y = arma::zeros<arma::Mat<int>>(known.n_rows, 1);
                for (arma::uword kkk = 0; kkk < known.n_rows; ++kkk)
                {
                    X.row(kkk) = (H.slice(known(kkk, 1)).col(known(kkk, 0))).t();
                    Y.row(kkk) = Qh(known(kkk, 0), known(kkk, 1));
                }

                arma::Mat<int> assumption_prefered = {1};
                // FIXED: lp_solve -> GLPK
                double res_alpha = glpk_solver(join_vert(ambiguous_hyperplanes, X, (H.slice(j).col(i)).t()), join_vert(label_of_ambiguous_hyperplanes, Y, assumption_prefered));
//                double res_alpha = lp_solver(join_vert(ambiguous_hyperplanes, X, (H.slice(j).col(i)).t()), join_vert(label_of_ambiguous_hyperplanes, Y, assumption_prefered));

                if (!is_lp_solve_suceed_)
                {
                    std::cerr<<"<ERROR> Rank failed, because lp_solver did not get the optimal solution!!!"<<std::endl;
                    return;
                }

                arma::Mat<int> assumption_not_prefered = {-1};

                // FIXED: lp_solve -> GLPK
                double res_beta = glpk_solver(join_vert(ambiguous_hyperplanes, X, (H.slice(j).col(i)).t()), join_vert(label_of_ambiguous_hyperplanes, Y, assumption_not_prefered));
//                double res_beta = lp_solver(join_vert(ambiguous_hyperplanes, X, (H.slice(j).col(i)).t()), join_vert(label_of_ambiguous_hyperplanes, Y, assumption_not_prefered));

                if (!is_lp_solve_suceed_)
                {
                    std::cerr<<"<ERROR> Rank failed, because lp_solver did not get the optimal solution!!!"<<std::endl;
                    return;
                }

                // std::cout<<"res_alpha.second: "<<res_alpha.second<<std::endl;
                // std::cout<<"res_beta.second: <info> arrive [R2_IBEA_AR::approximate_gold]"<<res_beta.second<<std::endl;
                if (res_alpha < 100 && res_beta < 100)
                {
                    std::cout<<"<WARNING> broke - maxiter is too low for convergence. restarting. known.n_rows:"<<known.n_rows<<std::endl;
                    if (known.n_rows > 0)
                    {
                        known.shed_row(known.n_rows - 1);
                    }
                }
                else if (res_alpha < 100)
                {// not ambiguous
                    Qh(i, j) = -1;
                    Qh(j, i) = -Qh(i, j);
                    cnt_unambiguous_query++;
                }
                else if (res_beta < 100)
                {// not ambiguous
                    Qh(i, j) = 1;
                    Qh(j, i) = -Qh(i, j);
                    cnt_unambiguous_query++;
                }
                else
                {// If you are here, the query is Ambiguous.
                    cnt_ambiguous_query++;
                    // std::cout<<"<info> the query is Ambiguous"<<std::endl;
                    arma::umat new_know = {i, j};
                    known = join_vert(known, new_know);
                    // std::cout<<"known: "<<known<<std::endl;
                    // std::cout<<objects.row(i)<<std::endl;

                    if (preference_function_L2(objects.row(i).t(), objects.row(j).t(), w_star_))
                        //if (preference_function_InverseChebycheff(objects.row(i).t(), objects.row(j).t(), weight_, d))
                    {
                        Qh(i, j) = 1;
                    }
                    else
                    {
                        Qh(i, j) = -1;
                    }

                    Qh(j,i) = -Qh(i,j);
                }

                if (Qh(i, j) == 1)
                {
                    // std::cout<<"<info> induced by below quick sort: "<<below.n_rows<<std::endl;
                    cnt_unambiguous_query += below.n_rows;
                    cnt_total_pairwise_comparison += below.n_rows;
                    for (arma::uword k = 0; k < below.n_rows; ++k)
                    {
                        if (hi(below(k)) == hi(jj))
                        {
                            continue;
                        }
                        Qh(hi(below(k)), hi(jj)) = 1;
                        Qh(hi(jj), hi(below(k))) = -1;
                    }
                }
                else if(Qh(i, j) == -1)
                {
                    // std::cout<<"<info> induced by above quick sort: "<<above.n_rows<<std::endl;
                    cnt_unambiguous_query += above.n_rows;
                    cnt_total_pairwise_comparison += above.n_rows;
                    for (arma::uword k = 0; k < above.n_rows; ++k)
                    {
                        if (hi(above(k)) == hi(jj))
                        {
                            continue;
                        }
                        Qh(hi(jj), hi(above(k))) = 1;
                        Qh(hi(above(k)), hi(jj )) = -1;
                    }
                }

                get_undefined_preference(Qh, hi, jj, goodInds);
                // std::cout<<"goodInds: "<<goodInds<<std::endl;
            }
        }

        // std::cout<<"Qh after active ranking:"<<std::endl;
        // std::cout<<Qh<<std::endl;


        arma::mat X_collect = arma::zeros(known.n_rows, d + 1);
        arma::Mat<int> Y_collect = arma::zeros<arma::Mat<int>>(known.n_rows, 1);
        for (arma::uword kkk = 0; kkk < known.n_rows; ++kkk)
        {
            X_collect.row(kkk) = (H.slice(known(kkk, 1)).col(known(kkk, 0))).t();
            Y_collect.row(kkk) = Qh(known(kkk, 0), known(kkk, 1));
        }

        // FIXME
        ambiguous_hyperplanes = join_vert(ambiguous_hyperplanes, X_collect);
        std::cout<<"<info> number of ambiguous_hyperplanes: "<<ambiguous_hyperplanes.n_rows<<std::endl;
        label_of_ambiguous_hyperplanes = join_vert(label_of_ambiguous_hyperplanes, Y_collect);

        arma::vec active_ranking_res = approximate_gold(ambiguous_hyperplanes, label_of_ambiguous_hyperplanes);
        if (!is_lp_solve_suceed_)
        {
            std::cerr<<"<ERROR> Rank failed, because approximate_gold did not get the optimal solution!!!"<<std::endl;
            return;
        }

        if (active_ranking_res.n_rows != 0)
        {
            std::cout<<"<info> w_approximate:"<<std::endl;
            std::cout<<active_ranking_res<<std::endl;
        }
        else
        {
            std::cout<<"<WARNING> unable to approximate the w_star due to divide by zero!!!"<<std::endl;
        }

        w_approximate_ = active_ranking_res;

        std::cout<<"cnt_ambiguous_query: "<<cnt_ambiguous_query<<std::endl;
        num_ambiguous_query += cnt_ambiguous_query;
        std::cout<<"cnt_unambiguous_query: "<<cnt_unambiguous_query<<std::endl;
        std::cout<<"cnt_total_pairwise_comparison: "<<cnt_total_pairwise_comparison<<std::endl;
        std::cout<<"w_approximate: "<<w_approximate_<<std::endl;

        if (w_approximate_.n_rows == 0)
        {
            return;
        }


        arma::Mat<int> Q_gold = arma::zeros<arma::Mat<int>>(n,n);
        for (int i = 0; i < n; ++i)
        {
            for (int j = 0; j < n; ++j)
            {
                if (i == j)
                {
                    continue;
                }
                if (preference_function_L2(objects.row(i).t(), objects.row(j).t(), w_approximate_))
                    //if(preference_function_InverseChebycheff(objects.row(i).t(), objects.row(j).t(), weight_, d))
                {
                    Q_gold(i, j) = 1;
                    Q_gold(j, i) = -1;
                }
                else
                {
                    Q_gold(i, j) = -1;
                    Q_gold(j, i) = 1;
                }
            }
        }
        // std::cout<<"Q_gold:"<<std::endl;
        // std::cout<<Q_gold<<std::endl;
        if (is_equal_matrix(Qh, Q_gold))
        {
            std::cout<<"<info> preference matrix induced by w_star is equal to which induced by w_approximate!"<<std::endl;
        }

        // if w_approximate is convergenced, set the flag
        arma::vec w_new = w_approximate_;
        judge_convergenced_w_approximate(w_new, w_old);

        // std::cout<<"<info> leave [R2_IBEA_AR::active_ranking]"<<std::endl;
    }

    void R2_IBEA_AR::build_hyperplanes(arma::mat X, arma::cube &H)
    {
        int n = X.n_rows; // number of objects
        int d = X.n_cols; // dimension

        int records = 0;

        // build hyperplanes by pairwise points
        for (int j = 1; j < n; ++j)
        {
            for (int i = 0; i < j; ++i)
            {
                ++records;
                arma::rowvec obj_diff(X.row(j) - X.row(i)); // row vector with size 1xd
                arma::rowvec obj_sum(X.row(j) + X.row(i)); // row vector with size 1xd

                arma::vec num = -0.5 * obj_sum * obj_diff.t(); // column vector with size 1x1
                arma::vec extension(obj_diff.t()); // one column dx1
                extension.insert_rows(d, num); // at row d, insert num, d+1 rows (d+1, 1) in total; (index starts from 0)
                double normalization_value = arma::norm(arma::abs(extension));

                arma::rowvec obj_diff_normalized = obj_diff / normalization_value;
                arma::vec num_normalized = num / normalization_value;

                arma::vec extension_normalized(obj_diff_normalized.t());
                extension_normalized.insert_rows(d, num_normalized);
                H.slice(j).col(i) = extension_normalized;

                // std::cout<<H.slice(j).col(i)<<std::endl;

                H.slice(i).col(j) = -H.slice(j).col(i);
            }
        }

        // std::cout<<"<info> number of hyperplanes: "<<records<<std::endl;
    }

    void R2_IBEA_AR::get_undefined_preference(arma::Mat<int> Qh, arma::uvec hi, int j, arma::uvec &goodInds)
    {
        for (int i = 0; i < j; ++i)
        {
            if(Qh(hi(j), hi(i)) == 0) {
                goodInds(i) = 1;
            }
            else
            {
                goodInds(i) = 0;
            }
        }
    }

    arma::uvec R2_IBEA_AR::get_toSort(arma::uvec goodInds)
    {
        std::vector<arma::uword> v;
        for(arma::uword i = 0; i < goodInds.n_elem; ++i)
        {
            if (goodInds(i) == 1)
            {
                v.push_back(i);
            }
        }
        arma::uvec toSort(v);
        return toSort;
    }

    arma::uvec R2_IBEA_AR::compare_sort(arma::uvec goodInds, arma::Mat<int> Qhyp)
    {
        arma::uvec input = arma::linspace<arma::uvec>(0, sum(goodInds) - 1, sum(goodInds));
        // std::cout<<"input: "<<input<<std::endl;

        arma::uvec index(input);

        Qhyp = -Qhyp;

        quicksort_handle(Qhyp, index, 0, sum(goodInds) - 1);

        return index;
    }

    void R2_IBEA_AR::test_compare_sort()
    {
        std::cout<<"##### test_compare_sort ######"<<std::endl;
        arma::uvec goodInds = {1,1,1,0,0,0,1,0};
        std::cout<<goodInds<<std::endl;
        arma::Mat<int> Qhyp = {{0,1,1,-1},
                               {-1,0,-1,-1},
                               {-1,1,0,-1},
                               {1,1,1,0}};
        std::cout<<Qhyp<<std::endl;
        arma::uvec index = compare_sort(goodInds, Qhyp);
        std::cout<<"index: "<<index<<std::endl;
    }

    void R2_IBEA_AR::quicksort_handle(arma::Mat<int> cmp, arma::uvec &index, int l, int r)
    {
        arma::uword i = l + 1;
        arma::uword j = r;
        arma::uword p = l;
        if (l >= r)
        {
            return;
        }

        while (i <= j)
        {
            switch (cmp(index(i), index(l)))
            {
                case 1:
                {
                    arma::uword tmp = index(j);
                    index(j) = index(i);
                    index(i) = tmp;
                    j = j - 1;
                    break;
                }
                case -1:
                    ++i;
                    break;
                default:
                    ++p;
                    ++i;
                    break;
            }
        }

        while (i <= j)
        {
            switch (cmp(index(i), index(l)))
            {
                case 1:
                {
                    arma::uword tmp = index(j);
                    index(j) = index(i);
                    index(i) = tmp;
                    j = j - 1;
                    break;
                }
                case -1:
                    ++i;
                    break;
                default:
                {
                    ++p;
                    arma::uword tmp = index(p);
                    index(p) = index(i);
                    index(i) = tmp;
                    ++i;
                    break;
                }
            }
        }

        // swap "less thans" with "equals"
        arma::uword u = 0;
        arma::uvec tmp;
        tmp.zeros(j - l + 1);
        for (arma::uword k = p + 1; k <= j; ++k)
        {
            tmp(u) = index(k);
            ++u;
        }
        for (arma::uword k = l; k <= p; ++k)
        {
            tmp(u) = index(k);
            ++u;
        }
        u = 0;
        for(arma::uword k = l; k <= j; ++k)
        {
            index(k) = tmp(u);
            ++u;
        }

        quicksort_handle(cmp, index, l, l + j - p);
        quicksort_handle(cmp, index, i, r);
    }

    double R2_IBEA_AR::lp_solver(arma::mat X, arma::Mat<int> Y)
    {
        std::cout<<"<info> arrive [R2_IBEA_AR::lp_solver]"<<std::endl;
        std::cout<<"X:("<<X.n_rows<<"x"<<X.n_cols<<")\n"<<X<<std::endl;
        std::cout<<Y<<std::endl;

        is_lp_solve_suceed_ = false;

        arma::uword l = X.n_rows;
        arma::uword d = X.n_cols;
        arma::mat h = X % repmat(Y, 1, d);
        // std::cout<<"size of h: "<<h.n_rows<<","<<h.n_cols<<std::endl;

        arma::mat b = arma::ones(l, 1);
        // std::cout<<"size of b: "<<b.n_rows<<","<<b.n_cols<<std::endl;
        arma::mat A = join_rows(h, -h, b);
        A = -A;
        b = -b;
        arma::mat tmp1 = {1};
        arma::mat f = join_vert(arma::zeros(2 * d, 1), tmp1);
        arma::mat tmp2 = {-1};
        arma::mat LB = join_vert(arma::zeros(2 * d, 1), tmp2);
        arma::mat UB(2 *d + 1, 1);
        UB.fill(arma::datum::inf);

        // lp_solve solves the linear programming solver based on the revised simplex method
        lprec *lp;
        //    int j;
        int Ncol, *colno = NULL, ret = 0;
        REAL *row = NULL;

        Ncol = 2 * d + 1; // number of variables
        // std::cout<<"<info> make lp"<<std::endl;
        lp = make_lp(0, Ncol);

        if (lp == NULL)
        {
            std::cerr<<"<ERROR> couldn't construct a new lp model"<<std::endl;
            ret = 1; /* couldn't construct a new model... */
        }

        if (ret == 0)
        {
            /* let us name our variables. Not required, but can be useful for debugging */
            // set_col_name(lp, 1, "x");
            // set_col_name(lp, 2, "y");

            /* create space large enough for one row */
            colno = (int *)malloc(Ncol * sizeof(*colno));
            row = (REAL *)malloc(Ncol * sizeof(*row));
            if ((colno == NULL) || (row == NULL))
            {
                ret = 2;
            }
        }

        // std::cout<<"<info> add constraint: A*u <= b"<<std::endl;
        if (ret == 0)
        {
            set_add_rowmode(lp, TRUE);
            // add constraint: A*u <= b
            for (arma::uword i = 0; i < l; ++i)
            {
                int j = 0;
                for (; j < Ncol; ++j)
                {
                    colno[j] = j + 1;
                    row[j] = A(i, j);
                }
                /* add the row to lpsolve */
                if (!add_constraintex(lp, j, row, colno, LE, b(i, 0)))
                {
                    ret = 3;
                    break;
                }
            }

//        /* construct first row (120 x + 210 y <= 15000) */
//        j = 0;
//        colno[j] = 1; /* first column */
//        row[j++] = 120;
//        colno[j] = 2; /* second column */
//        row[j++] = 210;
//
//        /* add the row to lpsolve */
//        if (!add_constraintex(lp, j, row, colno, LE, 15000))
//        {
//            ret = 3;
//        }
        }

        // std::cout<<"<info> add constraint: lower bound [0,0,0,...,-1]"<<std::endl;
        if (ret == 0)
        {
            // add constraint: lower bound [0,0,0,...,-1]
            arma::mat M = arma::eye(Ncol, Ncol);
            arma::mat lb = arma::zeros(Ncol, 1);
            lb(lb.n_rows - 1, 0) = -1;
            for (int i = 0; i < Ncol; ++i)
            {
                int k = 0;
                for (; k < Ncol; ++k)
                {
                    colno[k] = k + 1;
                    row[k] = M(i, k);
                }
                /* add the row to lpsolve */
                if (!add_constraintex(lp, k, row, colno, GE, lb(i, 0)))
                {
                    ret = 3;
                    break;
                }
            }
//        /* construct second row (110 x + 30 y <= 4000) */
//        j = 0;
//        colno[j] = 1; /* first column */
//        row[j++] = 110;
//        colno[j] = 2; /* second column */
//        row[j++] = 30;
//        /* add the row to lpsolve */
//        if (!add_constraintex(lp, j, row, colno, LE, 4000))
//        {
//            ret = 3;
//        }
        }

        if (ret == 0)
        {
            // add constraint: upper bound [INF,INF,INF,...,INF]
            arma::mat M = arma::eye(Ncol, Ncol);
            arma::mat lb(Ncol, 1);
            lb.fill(INF);
            for (int i = 0; i < Ncol; ++i)
            {
                int k = 0;
                for (; k < Ncol; ++k)
                {
                    colno[k] = k + 1;
                    row[k] = M(i, k);
                }
                /* add the row to lpsolve */
                if (!add_constraintex(lp, k, row, colno, LE, lb(i, 0)))
                {
                    ret = 3;
                    break;
                }
            }
        }

//    if (ret == 0)
//    {
//        /* construct third row (x + y <= 75) */
//        j = 0;
//        colno[j] = 1; /* first column */
//        row[j++] = 1;
//        colno[j] = 2; /* second column */
//        row[j++] = 1;
//        /* add the row to lpsolve */
//        if (!add_constraintex(lp, j, row, colno, LE, 75))
//        {
//            ret = 3;
//        }
//    }

        // std::cout<<"<info> set the objective function (u_(2*d + 1))"<<std::endl;
        if (ret == 0)
        {
            set_add_rowmode(lp, FALSE);
            /* set the objective function (u_(2*d + 1)) */
            int i = 0;
            for (; i < Ncol; ++i)
            {
                colno[i] = i + 1;
                row[i] = f(i, 0);
            }
            if (!set_obj_fnex(lp, i, row, colno))
            {
                ret = 4;
            }
//        j = 0;
//        colno[j] = 1; /* first column */
//        row[j++] = 143;
//        colno[j] = 2; /* second column */
//        row[j++] = 60;
//        if (!set_obj_fnex(lp, j, row, colno))
//        {
//            ret = 4;
//        }
        }

        if (ret == 0)
        {
            /* set the object direction to minimize */
            set_minim(lp);
            // write_LP(lp, stdout);
            set_verbose(lp, IMPORTANT);

            // set_break_numeric_accuracy(lp, 1e-4);

            // set_mip_gap(lp, TRUE, 1.0e-1); /* sets absolute mip_gap to 1e-5 */

            // set_break_at_first(lp, TRUE);

            set_timeout(lp, 50); /* sets a timeout of 120 seconds */

            // FIXME: TIME OUT
            // std::cout<<"<info> arrive solve(lp)"<<std::endl;
            ret = solve(lp);
            // std::cout<<"<info> leave solve(lp)"<<std::endl;

            if (ret == TIMEOUT)
            {
                std::cout<<"<WARNING> TIME OUT when solving lp!!!"<<std::endl;
                return -1;
            }

            // FIXED
            if(ret == ACCURACYERROR)
            {
                // When accuracy from get_accuracy is larger than this values, optimization will fail with ACCURACYERROR.
                // By default, accuracy is 5e-7.

                // Sets the accuracy values when solve should fail.
                std::cout<<"<WARNING> Sets the accuracy values to get optimal solution of linear programming problem!!!"<<std::endl;
                set_break_numeric_accuracy(lp, 1e-3);
                ret = solve(lp);
            }

            // FIXED
            if (ret != OPTIMAL)
            {
                // The set_mip_gap function sets the MIP gap that specifies a tolerance for the branch and bound algorithm.
                // This tolerance is the difference between the best-found solution yet and the current solution.
                // If the difference is smaller than this tolerance then the solution (and all the sub-solutions) is rejected.
                // This can result in faster solving times, but results in a solution which is not the perfect solution.
                // So be careful with this tolerance.
                // The default mip_gap value is 1e-11
                std::cout<<"<WARNING> Sets the default mip_gap value to get optimal solution of linear programming problem!!!"<<std::endl;
                set_mip_gap(lp, TRUE, 1.0e-4); /* sets absolute mip_gap to 1e-4 */
                ret = solve(lp);
            }

            if (ret == OPTIMAL)
            {
                ret = 0;
            }
            else
            {
                std::cerr<<"<ERROR> did not get the optimal solution in solve(lp), Return Value: "<<ret<<std::endl;
            }
        }

        if (ret == 0)
        {
            /* objective value */
            // printf("Objective value: %f\n", get_objective(lp));

            // std::cout<<"<info> get variable values"<<std::endl;
            /* variable values */
            get_variables(lp, row);
//            for (int j = 0; j < Ncol; j++)
//            {
//                printf("%s:%f ", get_col_name(lp, j + 1), row[j]);
//            }
//            std::cout<<std::endl;
        }

        if (colno != NULL)
        {
            free(colno);
            colno = NULL;
        }
        if (lp != NULL)
        {
            delete_lp(lp);
            lp = NULL;
        }

        double acc = 0.0;
        arma::vec w_approximate;
        if (ret == 0)
        {
            is_lp_solve_suceed_ = true;

            arma::vec u1 = arma::zeros(d);
            arma::vec u2 = arma::zeros(d);
            for (arma::uword i = 0; i < d; ++i)
            {
                u1(i) = row[i];
            }
            for (arma::uword i = 0; i < d; ++i)
            {
                u2(i) = row[d + i];
            }
            arma::vec w = u1 - u2;
            arma::vec s = X * w;
            int number_right_judges = 0;
            for (arma::uword i = 0; i < l; ++i)
            {
                if ((Y(i, 0) == -1 && s(i) < 0) ||
                    (Y(i, 0) == 1 && s(i) > 0))
                {
                    ++number_right_judges;
                }
            }

            acc = (double)number_right_judges / l * 100;
            // std::cout<<"<info> acc: "<<acc<<std::endl;
        }

        if (row != NULL)
        {
            free(row);
            row = NULL;
        }

        // std::cout<<"<info> leave [R2_IBEA_AR::lp_solver]"<<std::endl;

        return acc;
    }

    arma::vec R2_IBEA_AR::approximate_gold(arma::mat X, arma::Mat<int> Y)
    {
        // std::cout<<"<info> arrive [R2_IBEA_AR::approximate_gold]"<<std::endl;

        is_lp_solve_suceed_ = false;

        arma::uword l = X.n_rows;
        arma::uword d = X.n_cols;
        arma::mat h = X % repmat(Y, 1, d);
        // std::cout<<"size of h: "<<h.n_rows<<","<<h.n_cols<<std::endl;

        arma::mat b = arma::ones(l, 1);
        // std::cout<<"size of b: "<<b.n_rows<<","<<b.n_cols<<std::endl;
        arma::mat A = join_rows(h, -h, b);
        A = -A;
        b = -b;
        arma::mat tmp1 = {1};
        arma::mat f = join_vert(arma::zeros(2 * d, 1), tmp1);
        arma::mat tmp2 = {-1};
        arma::mat LB = join_vert(arma::zeros(2 * d, 1), tmp2);
        arma::mat UB(2 *d + 1, 1);
        UB.fill(arma::datum::inf);

        // lp_solve solves the linear programming solver based on the revised simplex method
        lprec *lp;
        //    int j;
        int Ncol, *colno = NULL, ret = 0;
        REAL *row = NULL;

        Ncol = 2 * d + 1; // number of variables
        lp = make_lp(0, Ncol);

        if (lp == NULL)
        {
            std::cerr<<"<ERROR> couldn't construct a new lp model"<<std::endl;
            ret = 1; /* couldn't construct a new model... */
        }

        if (ret == 0)
        {
            /* let us name our variables. Not required, but can be useful for debugging */
            // set_col_name(lp, 1, "x");
            // set_col_name(lp, 2, "y");

            /* create space large enough for one row */
            colno = (int *)malloc(Ncol * sizeof(*colno));
            row = (REAL *)malloc(Ncol * sizeof(*row));
            if ((colno == NULL) || (row == NULL))
            {
                std::cerr<<"<ERROR> create space large enough for one row failed"<<std::endl;
                ret = 2;
            }
        }

        if (ret == 0)
        {
            set_add_rowmode(lp, TRUE);
            // add constraint: A*u <= b
            for (arma::uword i = 0; i < l; ++i)
            {
                int j = 0;
                for (; j < Ncol; ++j)
                {
                    colno[j] = j + 1;
                    row[j] = A(i, j);
                }
                /* add the row to lpsolve */
                if (!add_constraintex(lp, j, row, colno, LE, b(i, 0)))
                {
                    ret = 3;
                    break;
                }
            }

//        /* construct first row (120 x + 210 y <= 15000) */
//        j = 0;
//        colno[j] = 1; /* first column */
//        row[j++] = 120;
//        colno[j] = 2; /* second column */
//        row[j++] = 210;
//
//        /* add the row to lpsolve */
//        if (!add_constraintex(lp, j, row, colno, LE, 15000))
//        {
//            ret = 3;
//        }
        }

        if (ret == 0)
        {
            // add constraint: lower bound [0,0,0,...,-1]
            arma::mat M = arma::eye(Ncol, Ncol);
            arma::mat lb = arma::zeros(Ncol, 1);
            lb(lb.n_rows - 1, 0) = -1;
            for (int i = 0; i < Ncol; ++i)
            {
                int k = 0;
                for (; k < Ncol; ++k)
                {
                    colno[k] = k + 1;
                    row[k] = M(i, k);
                }
                /* add the row to lpsolve */
                if (!add_constraintex(lp, k, row, colno, GE, lb(i, 0)))
                {
                    ret = 3;
                    break;
                }
            }
//        /* construct second row (110 x + 30 y <= 4000) */
//        j = 0;
//        colno[j] = 1; /* first column */
//        row[j++] = 110;
//        colno[j] = 2; /* second column */
//        row[j++] = 30;
//        /* add the row to lpsolve */
//        if (!add_constraintex(lp, j, row, colno, LE, 4000))
//        {
//            ret = 3;
//        }
        }

//    if (ret == 0)
//    {
//        /* construct third row (x + y <= 75) */
//        j = 0;
//        colno[j] = 1; /* first column */
//        row[j++] = 1;
//        colno[j] = 2; /* second column */
//        row[j++] = 1;
//        /* add the row to lpsolve */
//        if (!add_constraintex(lp, j, row, colno, LE, 75))
//        {
//            ret = 3;
//        }
//    }
        if (ret == 0)
        {
            set_add_rowmode(lp, FALSE);
            /* set the objective function (u_(2*d + 1)) */
            int i = 0;
            for (; i < Ncol; ++i)
            {
                colno[i] = i + 1;
                row[i] = f(i, 0);
            }
            if (!set_obj_fnex(lp, i, row, colno))
            {
                ret = 4;
            }
//        j = 0;
//        colno[j] = 1; /* first column */
//        row[j++] = 143;
//        colno[j] = 2; /* second column */
//        row[j++] = 60;
//        if (!set_obj_fnex(lp, j, row, colno))
//        {
//            ret = 4;
//        }
        }
        if (ret == 0)
        {
            /* set the object direction to minimize */
            set_minim(lp);
            // write_LP(lp, stdout);
            set_verbose(lp, IMPORTANT);

            ret = solve(lp);

            // FIXED
            if(ret == ACCURACYERROR)
            {
                // When accuracy from get_accuracy is larger than this values, optimization will fail with ACCURACYERROR.
                // By default, accuracy is 5e-7.

                // Sets the accuracy values when solve should fail.
                std::cout<<"<WARNING> Sets the accuracy values to get optimal solution of linear programming problem!!!"<<std::endl;
                set_break_numeric_accuracy(lp, 1e-3);
                ret = solve(lp);
            }

            // FIXED
            if (ret != OPTIMAL)
            {
                // The set_mip_gap function sets the MIP gap that specifies a tolerance for the branch and bound algorithm.
                // This tolerance is the difference between the best-found solution yet and the current solution.
                // If the difference is smaller than this tolerance then the solution (and all the sub-solutions) is rejected.
                // This can result in faster solving times, but results in a solution which is not the perfect solution.
                // So be careful with this tolerance.
                // The default mip_gap value is 1e-11
                std::cout<<"<WARNING> Sets the default mip_gap value to get optimal solution of linear programming problem!!!"<<std::endl;
                set_mip_gap(lp, TRUE, 1.0e-5); /* sets absolute mip_gap to 1e-5 */
                ret = solve(lp);
            }

            if (ret == OPTIMAL)
            {
                ret = 0;
            }
            else
            {
                std::cerr<<"<ERROR> did not get the optimal solution in solve(lp), Return Value: "<<ret<<std::endl;
            }
        }
        if (ret == 0)
        {
            /* objective value */
            // printf("Objective value: %f\n", get_objective(lp));
            /* variable values */
            get_variables(lp, row);
//            for (int j = 0; j < Ncol; j++)
//            {
//                printf("%s:%f ", get_col_name(lp, j + 1), row[j]);
//            }
//            std::cout<<std::endl;
        }

        if (colno != NULL)
        {
            free(colno);
            colno = NULL;
        }
        if (lp != NULL)
        {
            delete_lp(lp);
            lp = NULL;
        }

        double acc = 0.0;
        arma::vec w_approximate;
        if (ret == 0)
        {
            is_lp_solve_suceed_ = true;

            arma::vec u1 = arma::zeros(d);
            arma::vec u2 = arma::zeros(d);
            for (arma::uword i = 0; i < d; ++i)
            {
                u1(i) = row[i];
            }
            for (arma::uword i = 0; i < d; ++i)
            {
                u2(i) = row[d + i];
            }
            arma::vec w = u1 - u2;
            arma::vec s = X * w;
            int number_right_judges = 0;
            for (arma::uword i = 0; i < l; ++i)
            {
                if ((Y(i, 0) == -1 && s(i) < 0) ||
                    (Y(i, 0) == 1 && s(i) > 0))
                {
                    ++number_right_judges;
                }
            }

            acc = (double)number_right_judges / l * 100;
            assert(fabs(acc - 100) < 1e-6);
            // std::cout<<"<info> acc: "<<acc<<std::endl;


            if (fabs(w(w.n_rows - 1)) < 1e-6)
            {// handle <divide zero>
                std::cout<<"<WARNING> divide zero, unable to update w_approximate, so use last w_approximate!!!"<<std::endl;
                // remain last value
                w_approximate = w_approximate_;
            }
            else
            {
                w_approximate = w.rows(0, w.n_rows - 2) / w(w.n_rows - 1);
            }
        }


        if (row != NULL)
        {
            free(row);
            row = NULL;
        }

        // std::cout<<"<info> leave [R2_IBEA_AR::approximate_gold]"<<std::endl;

        return w_approximate;
    }

    void R2_IBEA_AR::test_lp_solver()
    {
        arma::mat X = {{0.5617, 0.5006, -0.6587},
                       {0.5558, 0.5616, -0.6129},
                       {-0.5634, -0.3678, 0.7398},
                       {-0.8803, 0.2895, 0.3758},
                       {-0.2467, 0.9161, -0.3160},
                       {-0.9206, 0.3607, 0.1498},
                       {-0.7321, -0.5009, 0.4616},
                       {-0.5714, 0.7682, -0.2889},
                       {-0.0299, 0.8243, -0.5653},
                       {-0.8318, 0.5091, -0.2212},
                       {0.6702, -0.7039, 0.2352},
                       {0.4582, 0.7453, -0.4843},
                       {-0.5954, -0.6146, 0.5174},
                       {0.9784, -0.2060, -0.0168},
                       {-0.1882, -0.8074, 0.5593},
                       {0.0649, 0.8503, -0.5222},
                       {0.1401, 0.8415, -0.5218}
        };

        arma::Mat<int> Y = arma::ones<arma::Mat<int>>(17, 1);
        Y(2, 0) = -1;
        Y(3, 0) = -1;
        Y(4, 0) = -1;
        Y(5, 0) = -1;
        Y(6, 0) = -1;
        Y(7, 0) = -1;
        Y(11, 0) = -1;
        Y(12, 0) = -1;
        Y(13, 0) = -1;
        Y(14, 0) = -1;

        lp_solver(X, Y);
    }

    double R2_IBEA_AR::glpk_solver(arma::mat X, arma::Mat<int> Y)
    {
//        std::cout<<X<<std::endl;
//        std::cout<<Y<<std::endl;
        is_lp_solve_suceed_ = false;

        arma::uword l = X.n_rows;
        arma::uword d = X.n_cols;
        arma::mat h = X % repmat(Y, 1, d);
        // std::cout<<"size of h: "<<h.n_rows<<","<<h.n_cols<<std::endl;

        arma::mat b = arma::ones(l, 1);
        // std::cout<<"size of b: "<<b.n_rows<<","<<b.n_cols<<std::endl;
        arma::mat A = join_rows(h, -h, b);
        A = -A;
        b = -b;

        int Ncol = 2 * d + 1; // number of variables
        int Naux = l;
        glp_prob *lp;
        lp = glp_create_prob();
        // minimize problem
        glp_set_obj_dir(lp, GLP_MIN);

        // auxiliary_variables_rows:
        glp_add_rows(lp, Naux);
        for (int i = 1; i <= Naux; ++i)
        {
            glp_set_row_name(lp, i, ("ST." + std::to_string(i) ).c_str());
            glp_set_row_bnds(lp, i, GLP_UP, 0.0, -1.0);
        }

        // variables_columns:
        glp_add_cols(lp, Ncol);
        for (int i = 1; i <= Ncol; ++i)
        {
            glp_set_col_name(lp, i, ("x" + std::to_string(i) ).c_str());
            if (i == Ncol)
            {
                glp_set_col_bnds(lp, i, GLP_LO, -1.0, 0.0);
            }
            else
            {
                glp_set_col_bnds(lp, i, GLP_LO, 0.0, 0.0);
            }
        }

        // set objective function, to_minimize: x_(2d+1)
        glp_set_obj_coef(lp, Ncol, 1.0);

        // constrant_matrix:
        int aux[Naux * Ncol + 1];
        int var[Naux * Ncol + 1];
        double coef[Naux * Ncol + 1];
        for (int i = 1; i <= Naux; ++i)
        {
            for (int j = 1; j <= Ncol; ++j)
            {
                // cout<<(i - 1) * Ncol + j<<endl;
                aux[(i - 1) * Ncol + j] = i;
                var[(i - 1) * Ncol + j] = j;
                coef[(i - 1) * Ncol + j] = A(i - 1, j - 1);
            }
        }
        glp_load_matrix(lp, Naux * Ncol, aux, var, coef);

        // calculate:
        int rt = glp_simplex(lp, NULL);
        if (rt != 0)
        {
            // TODO: error handle
            std::cerr<<"[ERROR] glp_simplex returns non-zero!!!"<<std::endl;
        }
        is_lp_solve_suceed_ = true;

        // output:
        double z;
        z = glp_get_obj_val(lp);
        // std::cout<<"z: "<<z<<std::endl;

        double x[Ncol];
        for (int i = 0; i < Ncol; ++i)
        {
            x[i] = glp_get_col_prim(lp, i + 1);
            // std::cout<<"x["<<(i + 1)<<"]:"<<x[i]<<" ";
        }
        // std::cout<<std::endl;

        // cleanup:
        if (lp != NULL)
        {
            glp_delete_prob(lp);
            // glp_free_env();
            lp = NULL;
        }


        double acc = 0.0;

        arma::vec u1 = arma::zeros(d);
        arma::vec u2 = arma::zeros(d);
        for (arma::uword i = 0; i < d; ++i)
        {
            u1(i) = x[i];
        }
        for (arma::uword i = 0; i < d; ++i)
        {
            u2(i) = x[d + i];
        }
        arma::vec w = u1 - u2;
        arma::vec s = X * w;
        int number_right_judges = 0;
        for (arma::uword i = 0; i < l; ++i)
        {
            if ((Y(i, 0) == -1 && s(i) < 0) ||
                (Y(i, 0) == 1 && s(i) > 0))
            {
                ++number_right_judges;
            }
        }

        acc = (double)number_right_judges / l * 100;
        // std::cout<<"<info> acc: "<<acc<<std::endl;

        return acc;
    }

    void R2_IBEA_AR::test_glpk_solver()
    {
        //    arma::mat X = {
//            {2.0721e-07   ,1.9034e-02 , -1.1983e-04 , -9.9982e-01},
//            {2.0170e-04  , 1.0893e-02  , 2.6179e-05 , -9.9994e-01},
//            {5.6778e-04 , -1.3207e-02  , 2.2894e-06  , 9.9991e-01},
//            {7.0546e-04  , 2.6270e-02 , -2.6578e-04  ,-9.9965e-01},
//            {1.9060e-04  ,-1.2905e-02 ,  3.8185e-07  , 9.9992e-01},
//            {-3.9621e-03 ,  1.5923e-02 , -1.9456e-05 , -9.9987e-01},
//            {-2.2562e-04  ,-3.9292e-02  , 1.8202e-02 ,  9.9906e-01},
//            {-8.6894e-04  ,-4.2879e-02  , 2.0994e-02 ,  9.9886e-01},
//            {1.5936e-05  ,-4.3435e-02  , 8.6475e-02  ,-9.9531e-01},
//            {1.3210e-02  ,-3.4258e-02  , 5.8563e-05  , 9.9933e-01},
//            {1.5300e-01  , 1.9386e-02 , -1.8929e-01  , 9.6973e-01},
//            {1.2814e-01  ,-6.2396e-02 , -1.9542e-03  ,-9.8979e-01},
//            {-3.0429e-02 ,  5.4929e-02 ,  1.8363e-04 , -9.9803e-01},
//            {-4.5910e-07  , 7.2737e-02 , -4.6356e-02  ,-9.9627e-01},
//            {1.2983e-01 ,  1.9551e-02 , -1.6732e-01   ,9.7712e-01},
//            {-4.4957e-02 ,  2.0117e-02 , -9.6892e-05  , 9.9879e-01},
//            {1.3873e-01  ,-6.7783e-02 , -2.2162e-03 , -9.8801e-01},
//            {-4.8924e-02  , 2.2462e-02 ,  1.8906e-02  , 9.9837e-01},
//            {-5.0691e-02   ,2.3506e-02  , 2.7391e-02  , 9.9806e-01},
//            {1.7372e-01 , -8.5384e-02  , 7.9115e-03 , -9.8106e-01},
//            {-1.5834e-01 , -1.4968e-02  , 1.1282e-01  , 9.8080e-01},
//            {-2.1074e-01 , -3.4017e-02  , 1.5450e-01  , 9.6466e-01},
//            {1.3534e-02 , -4.2257e-01  , 4.9663e-01 , -7.5803e-01},
//            {-3.9332e-05 , -6.6652e-02 ,  7.6565e-02 , -9.9483e-01},
//            {-1.1134e-01 , -1.6766e-02  , 5.5699e-02 ,  9.9208e-01},
//            {-6.5600e-03 , -2.0364e-02 , -7.0074e-02 ,  9.9731e-01},
//            {-3.1762e-06 , -3.2606e-01 ,  2.4705e-01 ,  9.1250e-01},
//            {4.5972e-02 , -5.8316e-02  , 1.8106e-05  , 9.9724e-01},
//            {1.5976e-01 , -1.4618e-01  , 6.1554e-05  ,-9.7627e-01},
//            {2.3471e-01 , -2.2093e-01  ,-4.1336e-04  ,-9.4663e-01},
//            {-1.4412e-05 , -1.1644e-01 ,  9.3349e-02 ,  9.8880e-01},
//            {-1.3117e-04 , -6.9044e-01 ,  6.9132e-01 , -2.1301e-01},
//            {7.7316e-02  ,-1.0119e-01 , -5.1725e-04  , 9.9186e-01},
//            {1.8840e-01  , 6.4202e-04 , -1.5882e-01  ,-9.6917e-01},
//            {4.3437e-01  ,-3.8179e-03 , -4.5553e-01  , 7.7705e-01},
//            {-6.5376e-01 , -9.2120e-02 ,  6.4193e-01 ,  3.8992e-01},
//            {-4.5547e-01 , -9.6512e-02  , 4.7083e-01 , -7.4936e-01},
//            {-2.7514e-05 ,  1.8415e-01 , -1.5449e-01 , -9.7068e-01},
//            {-7.0283e-01 ,  7.0346e-01 ,  1.9946e-04 , -1.0571e-01},
//            {-5.2594e-05 , -3.3669e-01 ,  3.1672e-01 ,  8.8675e-01},
//            {4.7270e-03  , 6.5953e-01 , -6.5382e-01  ,-3.7083e-01},
//            {-6.9460e-01  , 6.9156e-01,   3.5609e-03 ,  1.9816e-01},
//            {6.9107e-01  , 1.4726e-01 , -7.0684e-01  , 3.3190e-02},
//            {-5.9374e-01 ,  3.6155e-02 ,  5.7630e-01 ,  5.6040e-01},
//            {6.9690e-01 , -6.9367e-01 , -3.5739e-03  ,-1.8205e-01},
//            {2.2137e-01  , 6.5603e-01 , -5.3348e-01  ,-4.8582e-01},
//            {-1.3403e-02  , 6.6459e-01 , -7.3136e-01 ,  1.5248e-01},
//            {2.3434e-01 ,  7.2242e-01 , -5.3979e-01  ,-3.6307e-01},
//            {-7.7699e-01 ,  6.2544e-01 ,  2.2626e-02  ,-6.7809e-02},
//            {-4.6720e-04  , 7.1553e-01  ,-6.9804e-01  ,-2.7609e-02},
//            {7.0695e-01  ,-4.5890e-02 , -7.0354e-01  ,-5.6023e-02},
//            {-7.1710e-01 , -9.0095e-03 ,  6.9692e-01  , 9.5190e-04},
//            {7.1372e-01  ,-6.9205e-01  ,-2.2596e-02  ,-1.0569e-01},
//            {-7.0707e-01 ,  7.0707e-01 ,           0 ,  1.0687e-02},
//            {-7.1380e-01  , 7.0018e-01 ,  1.4545e-02 , -4.1226e-03},
//            {8.4251e-02  , 7.8393e-01  , 3.0152e-02  ,-6.1437e-01},
//            {5.4790e-02   ,7.0445e-01  ,-7.0762e-01   ,3.4720e-03},
//            {5.4957e-02  , 7.0660e-01  ,-7.0540e-01  ,-1.0226e-02},
//            {-9.7916e-01 , -9.9741e-03  ,-1.4423e-03 ,  2.0285e-01},
//            {-1.3880e-01  , 9.7439e-01  , 7.8377e-04 ,  1.7691e-01},
//            {-1.3158e-01  , 9.8045e-01  , 7.9619e-04 ,  1.4632e-01},
//            {-7.0706e-01  , 2.1109e-02  , 7.0680e-01 , -6.8943e-03},
//            {-7.0724e-01  , 2.1699e-02  , 7.0662e-01 , -5.1423e-03},
//            {-7.1107e-01  , 1.3501e-02  , 7.0298e-01 ,  2.4902e-03},
//            {7.0739e-01 , -1.7266e-02  ,-7.0661e-01  , 5.5805e-04},
//            {7.1777e-01 ,  8.2816e-02  ,-6.9119e-01  ,-1.4303e-02},
//            {1.6995e-02 ,  7.0190e-01  ,-7.1206e-01  , 4.5469e-03},
//            {-7.4794e-01  , 6.6301e-01 , -2.4513e-02  , 2.0135e-02},
//            {7.0367e-01  ,-7.1046e-01 , -2.6026e-11   ,9.6030e-03}
//
//    };
//
//    arma::Mat<int> Y = {
//            1,1,-1,1,-1,1,-1,-1,1,-1,-1,1,1,1,-1,-1,1,-1,
//            -1,1,-1,-1,1,1,-1,-1,-1,-1,1,1,-1,1,-1,1,-1,-1,
//            1,1,1,-1,1,-1,-1,-1,1,1,-1,1,1,1,1,
//            1,1,-1,1,1,-1,1,-1,-1,-1,1,1,-1,1,-1,-1,-1,-1
//    };
//    Y = Y.t();


        arma::mat X = {{0.5617, 0.5006, -0.6587},
                       {0.5558, 0.5616, -0.6129},
                       {-0.5634, -0.3678, 0.7398},
                       {-0.8803, 0.2895, 0.3758},
                       {-0.2467, 0.9161, -0.3160},
                       {-0.9206, 0.3607, 0.1498},
                       {-0.7321, -0.5009, 0.4616},
                       {-0.5714, 0.7682, -0.2889},
                       {-0.0299, 0.8243, -0.5653},
                       {-0.8318, 0.5091, -0.2212},
                       {0.6702, -0.7039, 0.2352},
                       {0.4582, 0.7453, -0.4843},
                       {-0.5954, -0.6146, 0.5174},
                       {0.9784, -0.2060, -0.0168},
                       {-0.1882, -0.8074, 0.5593},
                       {0.0649, 0.8503, -0.5222},
                       {0.1401, 0.8415, -0.5218}
        };

        arma::Mat<int> Y = arma::ones<arma::Mat<int>>(17, 1);
        Y(2, 0) = -1;
        Y(3, 0) = -1;
        Y(4, 0) = -1;
        Y(5, 0) = -1;
        Y(6, 0) = -1;
        Y(7, 0) = -1;
        Y(11, 0) = -1;
        Y(12, 0) = -1;
        Y(13, 0) = -1;
        Y(14, 0) = -1;

        glpk_solver(X, Y);
    }

    bool R2_IBEA_AR::preference_function_L2(arma::vec obj1, arma::vec obj2, arma::vec w_star)
    {
        if (norm(w_star - obj1) < norm(w_star - obj2))
        {
            return true;
        }
        return false;
    }

    bool R2_IBEA_AR::preference_function_InverseChebycheff(arma::vec obj1, arma::vec obj2, double *weight, int dimension)
    {
        double obj1_double[dimension];
        for (arma::uword i = 0; i < dimension; ++i)
        {
            obj1_double[i] = obj1(i);
        }

        double obj2_double[dimension];
        for (arma::uword i = 0; i < dimension; ++i)
        {
            obj2_double[i] = obj2(i);
        }

        return CalInverseChebycheff(obj1_double, weight, dimension) < CalInverseChebycheff(obj2_double, weight, dimension);
    }

    bool R2_IBEA_AR::is_equal_matrix(arma::Mat<int> Q1, arma::Mat<int> Q2)
    {
        arma::umat is_equal = Q1 == Q2;
//        std::cout<<"is_equal:"<<std::endl;
//        std::cout<<is_equal<<std::endl;
        arma::uvec non_zero_row = all(is_equal, 1);
        return all(non_zero_row);
    }


    void R2_IBEA_AR::judge_convergenced_w_approximate(arma::vec w_new, arma::vec w_old)
    {
        if (w_old.n_rows != 0 && w_new.n_rows != 0)
        {
            int n = w_old.n_rows;
            arma::uword i = 0;
            for ( ; i < n; ++i)
            {
                if (fabs(w_new(i) - w_old(i)) < 1e-5)
                {// equal

                }
                else
                {
                    break;
                }
            }
            if (i == n)
            {
                is_w_approximate_convergenced_ = true;
                std::cout<<"<info> w_approximate has convergenced in GEN "<<g_GlobalSettings->iteration_num_<<"!!! Stop Active Ranking!!!"<<std::endl;
            }
        }

    }

}
