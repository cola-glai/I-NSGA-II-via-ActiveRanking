//
// Created by gylai on 2021/10/7.
// Contact: Lai Guiyu <guiyulai.chn@gmail.com>
// COLA-Lab@UESTC
//

#include <fcntl.h>
#include "meta_nsga2.h"

namespace emoc
{
    META_NSGA2::META_NSGA2(Problem *problem, int thread_num):
            Algorithm(problem, thread_num),
            weight_(nullptr)
    {

    }

    META_NSGA2::~META_NSGA2()
    {
        if (weight_)
        {
            delete[] weight_;
            weight_ = nullptr;
        }
        while(winners_.size())
        {
            delete[] winners_.front();
            winners_.pop();
            delete[] losers_.front();
            losers_.pop();
        }
    }

    void META_NSGA2::Run()
    {
        class PyThreadStateLock PyThreadLock;

        int tau = g_GlobalSettings->tau_;
        bool flag_EnvironmentalSelection;
        Initialization();
        #ifdef GNUPLOT_COMMAND
        FILE *gp= nullptr;
        gp = popen(GNUPLOT_COMMAND,"w");
        int d = fileno(gp);
        int val = fcntl(d,F_GETFL,0);
//        val |= O_NONBLOCK;
        fcntl(d,F_SETFL,val);
        if(val & O_NONBLOCK) std::cerr<<"i'm non block!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1\n";
        if (!gp)
        {
            std::cerr<<"<Error!!!> Could not open a pipe to gnuplot, check the definition of GNUPLOT_COMMAND"<<std::endl;
            exit(-1);
        }
        #endif
        if (g_GlobalSettings->output_interval_)
        {
            TrackPopulation(g_GlobalSettings->iteration_num_);
        }

        int max_iteration_num = g_GlobalSettings->max_evaluation_ / g_GlobalSettings->population_num_;
        while (!g_GlobalSettings->IsTermination())
        {
            if (g_GlobalSettings->iteration_num_ == max_iteration_num / 3)
            {
                // for active ranking
                const char *filename = "/home/gylai/Desktop/ar_nsga2/code/pop.txt";
                FILE *fpt = fopen(filename, "w");
                if(fpt == nullptr)
                {
                    std::cerr <<filename<< " doesn't exist." << std::endl;
                    std::cerr << "Press enter to exit" << std::endl;
                    std::cin.get();
                    exit(-1);
                }
                for (int i = 0; i < g_GlobalSettings->population_num_; ++i)
                {
                    for (int j = 0; j < g_GlobalSettings->obj_num_-1; ++j)
                    {
                        fprintf(fpt, "%lf\t", g_GlobalSettings->parent_population_[i]->obj_[j]);
                    }
                    fprintf(fpt, "%lf\n", g_GlobalSettings->parent_population_[i]->obj_[g_GlobalSettings->obj_num_-1]);
                }
                // FIXME
                fflush(fpt);
                fclose(fpt);
                std::cerr<<"waiting for w_approximate...\n";
                usleep(30000000);
            }

            #ifdef GNUPLOT_COMMAND
            display_pop(gp,g_GlobalSettings->parent_population_.data(),
                        g_GlobalSettings->population_num_,g_GlobalSettings->obj_num_,
                        g_GlobalSettings->iteration_num_);
            #endif
            /**Py_BEGIN_ALLOW_THREADS, Py_END_ALLOW_THREADS
             * 为了在较长时间的C函数调用前，
             * 临时释放全局锁，
             * 完成后重新获取全局锁，
             * 以避免阻塞其他python的线程继续运行
             */
            Py_BEGIN_ALLOW_THREADS;

                // begin each iteration
                g_GlobalSettings->iteration_num_++;
                // generate offspring population
                Crossover(g_GlobalSettings->parent_population_.data(), g_GlobalSettings->offspring_population_.data());

                MutationPop(g_GlobalSettings->offspring_population_.data(), g_GlobalSettings->population_num_, g_GlobalSettings);

                if (g_GlobalSettings->problem_name_ == "knapsack")
                {// do greedy repair on offspring when handling knapsack problem
                    greedy_repair(g_GlobalSettings->offspring_population_.data(), g_GlobalSettings->population_num_, g_GlobalSettings->dec_num_, g_GlobalSettings->obj_num_);
                }
                EvaluatePop(g_GlobalSettings->offspring_population_.data(), 2 * g_GlobalSettings->population_num_ / 2);
                MergePopulation(g_GlobalSettings->parent_population_.data(), g_GlobalSettings->population_num_, g_GlobalSettings->offspring_population_.data(),
                                g_GlobalSettings->population_num_, g_GlobalSettings->mixed_population_.data());

                /**Py_BEGIN_ALLOW_THREADS, Py_END_ALLOW_THREADS
                 * 为了在较长时间的C函数调用前，
                 * 临时释放全局锁，
                 * 完成后重新获取全局锁，
                 * 以避免阻塞其他python的线程继续运行
                 */
            Py_END_ALLOW_THREADS;

            flag_EnvironmentalSelection = EnvironmentalSelection(g_GlobalSettings->parent_population_.data(),
                                                                 g_GlobalSettings->mixed_population_.data(),
                                                                 g_GlobalSettings->iteration_num_ >= max_iteration_num / 3);

            #ifdef GNUPLOT_COMMAND
            display_mixed_pop(gp, g_GlobalSettings->obj_num_, g_GlobalSettings->iteration_num_);
            #endif


            if (!flag_EnvironmentalSelection)
            {
                std::cerr<<"[ERROR] Wrong in EnvironmentalSelection!\n";
                return;
            }

            // record the population every interval generations and the first and last genration
            if (((g_GlobalSettings->output_interval_)&&
                 (g_GlobalSettings->iteration_num_ % g_GlobalSettings->output_interval_ == 0))
                || g_GlobalSettings->IsTermination())
            {
                TrackPopulation(g_GlobalSettings->iteration_num_);
            }
        }

        #ifdef DEBUG
        DEBUG_MSG("decision space after EA","as follows,")
        for (int i = 0; i < g_GlobalSettings->population_num_; ++i)
        {
            for (int j = 0; j < g_GlobalSettings->dec_num_-1; ++j)
            {
                std::cout<<(g_GlobalSettings->parent_population_.data())[i]->dec_[j]<<",";
            }
            std::cout<<(g_GlobalSettings->parent_population_.data())[i]->dec_[g_GlobalSettings->dec_num_-1]<<std::endl;
        }
        #endif

        #ifdef GNUPLOT_COMMAND
        pclose(gp);
        #endif

    }

    void META_NSGA2::Initialization()
    {
        // initialize parent population
        g_GlobalSettings->InitializePopulation(g_GlobalSettings->parent_population_.data(), g_GlobalSettings->population_num_);
        if (g_GlobalSettings->problem_name_ == "knapsack")
        {
            initialize_bi_population(g_GlobalSettings->parent_population_.data(), g_GlobalSettings->population_num_, g_GlobalSettings->dec_num_, g_GlobalSettings->obj_num_);
        }
        EvaluatePop(g_GlobalSettings->parent_population_.data(), g_GlobalSettings->population_num_);
        // set weight
        weight_ = SetWeight(g_GlobalSettings->weight_stringType_);
    }

    void META_NSGA2::Crossover(Individual **parent_pop, Individual **offspring_pop)
    {
        // generate random permutation index for tournment selection
        int *index1 = new int[g_GlobalSettings->population_num_];
        int *index2 = new int[g_GlobalSettings->population_num_];
        random_permutation(index1, g_GlobalSettings->population_num_);
        random_permutation(index2, g_GlobalSettings->population_num_);

        for (int i = 0; i < g_GlobalSettings->population_num_ / 2; ++i)
        {
            /**
             * FIXME: rank for individual is undefined before 1st environmental selection
             */
            Individual *parent1 = TournamentByRank(parent_pop[index1[2 * i]], parent_pop[index1[2 * i + 1]]);
            Individual *parent2 = TournamentByRank(parent_pop[index2[2 * i]], parent_pop[index2[2 * i + 1]]);
            if (g_GlobalSettings->problem_name_ == "knapsack")
            {//do bi-crossover
                SinglePointCrossover(parent1, parent2, offspring_pop[2 * i], offspring_pop[2 * i + 1], g_GlobalSettings);
            }else
            {
                SBX(parent1, parent2, offspring_pop[2 * i], offspring_pop[2 * i + 1], g_GlobalSettings);
            }
        }
        if (index1)
        {
            delete[] index1;
            index1 = nullptr;
        }
        if (index2)
        {
            delete[] index2;
            index2 = nullptr;
        }
        //usleep(5000000);
    }

    void META_NSGA2::SetDistanceInfo(std::vector<DistanceInfo> &distanceinfo_vec, int target_index, double distance)
    {
        // search the target_index and set it's distance
        for (int i = 0; i < distanceinfo_vec.size(); ++i)
        {
            if (distanceinfo_vec[i].index == target_index)
            {
                distanceinfo_vec[i].distance += distance;
                break;
            }
        }
    }
    void META_NSGA2::SetPreferenceInfo(std::vector<SortList> &preferenceInfo_vec, int target_index, double value)
    {
        // search the target_index and set it's distance
        for (int i = 0; i < preferenceInfo_vec.size(); ++i)
        {
            if (preferenceInfo_vec[i].index == target_index)
            {
                preferenceInfo_vec[i].value += value;
                break;
            }
        }
    }


    int META_NSGA2::CrowdingDistance(Individual **mixed_pop,  int pop_num, int *pop_sort, int rank_index)
    {
        int num_in_rank = 0;
        std::vector<int> sort_arr(pop_num, 0);
        std::vector<DistanceInfo> distanceinfo_vec(pop_num, { -1,0.0 });

        // find all the indviduals with rank rank_index
        for (int i = 0; i < pop_num; i++)
        {
            mixed_pop[i]->fitness_ = 0;
            if (mixed_pop[i]->rank_ == rank_index)
            {
                distanceinfo_vec[num_in_rank].index = i;
                sort_arr[num_in_rank] = i;
                num_in_rank++;
            }
        }
        for (int i = 0; i < g_GlobalSettings->obj_num_; i++)
        {
            // sort the population with i-th obj
            std::sort(sort_arr.begin(), sort_arr.begin()+num_in_rank, [=](const int left, const int right){
                return mixed_pop[left]->obj_[i] < mixed_pop[right]->obj_[i];
            });

            // set the first and last individual with INF fitness (crowding distance)
            mixed_pop[sort_arr[0]]->fitness_ = INF;
            SetDistanceInfo(distanceinfo_vec, sort_arr[0], INF);
            mixed_pop[sort_arr[num_in_rank - 1]]->fitness_ = INF;
            SetDistanceInfo(distanceinfo_vec, sort_arr[num_in_rank - 1], INF);

            // calculate each solution's crowding distance
            for (int j = 1; j < num_in_rank - 1; j++)
            {
                if (INF != mixed_pop[sort_arr[j]]->fitness_)
                {
                    if (mixed_pop[sort_arr[num_in_rank - 1]]->obj_[i] == mixed_pop[sort_arr[0]]->obj_[i])
                    {
                        mixed_pop[sort_arr[j]]->fitness_ += 0;
                    }
                    else
                    {
                        double distance = (mixed_pop[sort_arr[j + 1]]->obj_[i] - mixed_pop[sort_arr[j - 1]]->obj_[i]) /
                                          (mixed_pop[sort_arr[num_in_rank - 1]]->obj_[i] - mixed_pop[sort_arr[0]]->obj_[i]);
                        mixed_pop[sort_arr[j]]->fitness_ += distance;
                        SetDistanceInfo(distanceinfo_vec, sort_arr[j], distance);
                    }
                }
            }
        }


        std::sort(distanceinfo_vec.begin(), distanceinfo_vec.begin()+num_in_rank, [](const DistanceInfo &left, const DistanceInfo &right) {
            return left.distance < right.distance;
        });

        // copy sort result
        for (int i = 0; i < num_in_rank; i++)
        {
            pop_sort[i] = distanceinfo_vec[i].index;
        }

        return num_in_rank;
    }
    int META_NSGA2::ArbitrarilySelect(Individual **mixed_pop, int pop_num, int *pop_sort, int rank_index)
    {
        int num_in_rank = 0;
        std::vector<int> sort_arr(pop_num, 0);
        std::vector<DistanceInfo> distanceinfo_vec(pop_num, { -1,0.0 });

        // find all the indviduals with rank rank_index
        for (int i = 0; i < pop_num; i++)
        {
            mixed_pop[i]->fitness_ = 0;
            if (mixed_pop[i]->rank_ == rank_index)
            {
                distanceinfo_vec[num_in_rank].index = i;
                sort_arr[num_in_rank] = i;
                num_in_rank++;
            }
        }
        std::sort(distanceinfo_vec.begin(), distanceinfo_vec.begin()+num_in_rank, [](const DistanceInfo &left, const DistanceInfo &right) {
            return left.distance < right.distance;
        });

        // copy sort result
        for (int i = 0; i < num_in_rank; i++)
        {
            pop_sort[i] = distanceinfo_vec[i].index;
        }
        return num_in_rank;
    }

    int META_NSGA2::RankViaPreference(Individual **mixed_pop, int pop_num, int *pop_sort, int rank_index, int nneed)
    {
        int idx_ind;
        int num_in_rank = 0;
        std::vector<int> PF(pop_num, 0);// pop_num: 2 * pop_parent_num
        std::vector<SortList> preferenceInfo_vec(pop_num, { -1,0.0 });
        // find all the indviduals with rank rank_index
        for (int i = 0; i < pop_num; i++)
        {
            if (mixed_pop[i]->rank_ == rank_index)
            {
                preferenceInfo_vec[num_in_rank].index = i;
                PF[num_in_rank] = i;
                num_in_rank++;
            }
        }
        double score[num_in_rank];
        #ifdef UsingGoldenFunction
        std::cout<<"[INFO] Using golden function.\n";
        for (int i = 0; i < num_in_rank; ++i)
        {
            preferenceInfo_vec[i].value = 0.0;
        }
        for (int i = 0; i < num_in_rank; ++i)
        {
            idx_ind = PF[i];
            SetPreferenceInfo(preferenceInfo_vec, idx_ind, 1-CalInverseChebycheff(mixed_pop[idx_ind], weight_, g_GlobalSettings->obj_num_));
            score[i] = 1-CalInverseChebycheff(mixed_pop[idx_ind], weight_, g_GlobalSettings->obj_num_);
        }

        std::sort(preferenceInfo_vec.begin(), preferenceInfo_vec.begin()+num_in_rank, [](const SortList &left, const SortList &right) {
            return left.value < right.value;
        });
        // copy sort result
        for (int i = 0; i < num_in_rank; i++)
        {
            pop_sort[i] = preferenceInfo_vec[i].index;
        }
        DEBUG_MSG("number of individuals in the last fractured PF", num_in_rank)
        DEBUG_MSG("number of survived individuals in the last fractured PF", nneed)
        // track ranking performance of top-k individuals
        double goldenPreference_[num_in_rank];
        for (int i = 0; i < num_in_rank; ++i)
        {
            goldenPreference_[i] = CalInverseChebycheff(g_GlobalSettings->mixed_population_[PF[i]]->obj_, weight_, g_GlobalSettings->obj_num_);
        }
        std::cout<<"[INFO] Accuracy of top-k ranking: "<<topK(score, goldenPreference_, num_in_rank, nneed)<<std::endl;
        return num_in_rank;
        #endif

        PyRun_SimpleString("import sys");
        PyRun_SimpleString("sys.path.append('./')");
        PyObject *pModule = NULL;
        PyObject* pRet = NULL;
        PyObject *PF_py = NULL; // PF in the last layer
        PyObject *ind_obj = NULL;
        PyObject *ind_obj_2 = NULL;
        PyObject *float_py = NULL;
        PyObject *winners_list = NULL;
        PyObject *losers_list = NULL;

        PyObject *pUseModel = NULL;

        wchar_t * s2[] = { L" " }; // 宽字符，长度为2字节
        PySys_SetArgv(1, s2);   // TODO: 加入argv参数 否则出错.PyAPI_FUNC(void) PySys_SetArgv(int, wchar_t **);
        //导入python文件
        pModule = PyImport_ImportModule("metaRankNet");
        if (!pModule)
        {
            std::cerr << "[ERROR] Can not open python file!\n";
            return -1;
        }
        /***
         * initialize model in first consultation
         */
        if (g_GlobalSettings->iteration_num_ == g_GlobalSettings->tau_)
        {
            PyObject *pCreateModel = PyObject_GetAttrString(pModule, "CreateModel");
            PyObject_CallFunctionObjArgs(pCreateModel, PyLong_FromLong((long)(g_GlobalSettings->obj_num_)),PyLong_FromLong((long)(g_GlobalSettings->run_id_)), NULL);
            Py_DECREF(pCreateModel);
        }

        int index_1, index_2, index_of_ind_1, index_of_ind_2, idx2ind;


        double *ind_1_obj, *ind_2_obj, *temp_a;
        ind_1_obj = ind_2_obj = nullptr;



        // record the PF in the last layer, then throw individuals in it into RankNet.
        PF_py = PyList_New(0);
        for (int i = 0; i < num_in_rank; ++i)
        {
            ind_obj = PyList_New(g_GlobalSettings->obj_num_);
            for (int j = 0; j < g_GlobalSettings->obj_num_; ++j)
            {
                PyList_SetItem(ind_obj, j, PyFloat_FromDouble(g_GlobalSettings->mixed_population_[PF[i]]->obj_[j]));
            }
            PyList_Append(PF_py, ind_obj);
            Py_DECREF(ind_obj);
        }

        /**
         * train RankNet
         */
        if (g_GlobalSettings->iteration_num_ % g_GlobalSettings->tau_ ==0)
        {
            PyObject *pTrainModel = NULL;
            pTrainModel = PyObject_GetAttrString(pModule, "TrainModel");

            int number_of_inquiries= g_GlobalSettings->inquiriesNum_;
            while (number_of_inquiries--)
            {
                if ((MAX_QUEUE_SIZE != -1) && (winners_.size()==MAX_QUEUE_SIZE))
                {
                    temp_a = winners_.front();
                    if (temp_a)
                    {
                        delete[] temp_a;
                        temp_a = nullptr;
                    }
                    winners_.pop();
                    temp_a = losers_.front();
                    if (temp_a)
                    {
                        delete[] temp_a;
                        temp_a = nullptr;
                    }
                    losers_.pop();
                }

                index_1 = index_2 = 0;
                while((index_1==index_2))
                {
                    index_1 = rnd(0, num_in_rank - 1);
                    index_2 = rnd(0, num_in_rank - 1);
                }
                index_of_ind_1 = PF[index_1];
                index_of_ind_2 = PF[index_2];
                ind_1_obj = new double[g_GlobalSettings->obj_num_];
                ind_2_obj = new double[g_GlobalSettings->obj_num_];
                for (int i = 0; i < g_GlobalSettings->obj_num_; ++i)
                {
                    ind_1_obj[i] = g_GlobalSettings->mixed_population_[index_of_ind_1]->obj_[i];
                    ind_2_obj[i] = g_GlobalSettings->mixed_population_[index_of_ind_2]->obj_[i];
                }

                if (CalInverseChebycheff(g_GlobalSettings->mixed_population_[index_of_ind_1], weight_, g_GlobalSettings->obj_num_)
                    <CalInverseChebycheff(g_GlobalSettings->mixed_population_[index_of_ind_2], weight_, g_GlobalSettings->obj_num_))
                {
                    winners_.push(ind_1_obj);
                    losers_.push(ind_2_obj);
                }
                else
                {
                    winners_.push(ind_2_obj);
                    losers_.push(ind_1_obj);
                }
            }

            winners_list = PyList_New(0);
            losers_list = PyList_New(0);
            for (int i = 0; i < winners_.size(); ++i)
            {
                ind_obj = PyList_New(g_GlobalSettings->obj_num_);
                ind_obj_2 = PyList_New(g_GlobalSettings->obj_num_);
                for (int j = 0; j < g_GlobalSettings->obj_num_; ++j)
                {
                    PyList_SetItem(ind_obj, j, PyFloat_FromDouble((winners_.front())[j]));
                    PyList_SetItem(ind_obj_2, j, PyFloat_FromDouble((losers_.front())[j]));
                }
                winners_.push(winners_.front());
                winners_.pop();
                losers_.push(losers_.front());
                losers_.pop();
                PyList_Append(winners_list, ind_obj);
                PyList_Append(losers_list, ind_obj_2);
                Py_DECREF(ind_obj);
                Py_DECREF(ind_obj_2);
            }
        #if DEBUG
            std::cout<<"[INFO] Number of pairwise comparisons used for training RankNet: "<<PyList_Size(winners_list)<<std::endl;
        #endif

            PyObject_CallFunctionObjArgs(pTrainModel, winners_list,losers_list,PyLong_FromLong((long)(g_GlobalSettings->run_id_)), NULL);

            Py_DECREF(winners_list);
            Py_DECREF(losers_list);
            Py_DECREF(pTrainModel);//TODO: DEBUG -> ref_cnt != 0

        }

        /**
         * use RankNet
         */
        pUseModel = PyObject_GetAttrString(pModule, "UseModel");
        pRet = PyObject_CallFunctionObjArgs(pUseModel, PF_py,PyLong_FromLong((long)(g_GlobalSettings->run_id_)), NULL);
        int listSize;
        if (pRet)  // 验证是否调用成功
        {
            std::cout<<"[INFO] Function excuted successfully."<<std::endl;
            listSize = PyList_Size(pRet);
            for (int i = 0; i < listSize; ++i)
            {
                float_py = PyList_GetItem(pRet,i);
                score[i] = PyFloat_AsDouble(float_py);
            }
        }
        else
        {
            std::cerr<<"[ERROR] Function excuted unsuccessfully."<<std::endl;
            return -1;
        }
//        #ifdef GNUPLOT_COMMAND
//        if (g_GlobalSettings->iteration_num_ % g_GlobalSettings->tau_ ==0)
//        {
//            // update the data for ranknet gnuplot
//            PyObject *pUpdateScore = PyObject_GetAttrString(pModule, "UpdateScore");
//            PyObject_CallFunctionObjArgs(pUpdateScore, PyLong_FromLong((long)(g_GlobalSettings->run_id_)), NULL);
//
//            FILE *gp= nullptr;
//            gp = popen(GNUPLOT_COMMAND,"w");
//            if (!gp)
//            {
//                std::cerr<<"<Error!!!> Could not open a pipe to gnuplot, check the definition of GNUPLOT_COMMAND"<<std::endl;
//                exit(-1);
//            }
//            GNUPlot_score(gp,g_GlobalSettings->parent_population_.data(),
//                          g_GlobalSettings->population_num_,g_GlobalSettings->obj_num_,
//                          g_GlobalSettings->iteration_num_);
//            pclose(gp);
//            Py_DECREF(pUpdateScore);
//        }
//        #endif

        for (int i = 0; i < num_in_rank; ++i)
        {
            idx_ind = PF[i];
            mixed_pop[idx_ind]->fitness_ = score[i];
            SetPreferenceInfo(preferenceInfo_vec, idx_ind, score[i]);
        }
        #if DEBUG
        std::cout<<"[INFO] Score in the last PF:\n";
        for (int i = 0; i < num_in_rank; ++i)
        {
            std::cout<<preferenceInfo_vec[i].index<<": "<<preferenceInfo_vec[i].value<<std::endl;
        }
        #endif

#if DEBUG
        // track ranking performance of top-k individuals
        double goldenPreference[num_in_rank];
        for (int i = 0; i < num_in_rank; ++i)
        {
            goldenPreference[i] = CalInverseChebycheff(g_GlobalSettings->mixed_population_[PF[i]]->obj_, weight_, g_GlobalSettings->obj_num_);
        }
        std::cout<<"[INFO] Accuracy of top-k ranking: "<<topK(score, goldenPreference, num_in_rank, nneed)<<std::endl;
#endif

        std::sort(preferenceInfo_vec.begin(), preferenceInfo_vec.begin()+num_in_rank,
                  [](const SortList &left, const SortList &right)
                  {
                    return left.value < right.value;
                  }
                  );
#if DEBUG
        /*std::cout<<"[INFO] Rank of the last PF:\n";
        for (int i = 0; i < num_in_rank; ++i)
        {
            std::cout<<preferenceInfo_vec[i].index<<": "<<preferenceInfo_vec[i].value<<std::endl;
        }*/
#endif

        // copy sort result
        for (int i = 0; i < num_in_rank; i++)
        {
            pop_sort[i] = preferenceInfo_vec[i].index;
        }

        Py_DECREF(pModule);
        Py_DECREF(pRet);
        Py_DECREF(PF_py);
        Py_DECREF(pUseModel);

        return num_in_rank;
    }

    bool META_NSGA2::EnvironmentalSelection(Individual **parent_pop, Individual **mixed_pop, bool usingPreferenceModel)
    {
        int current_popnum = 0, rank_index = 0;
        int mixed_popnum = 2 * g_GlobalSettings->population_num_;
        if (usingPreferenceModel)
        {
            rNonDominatedSort(mixed_pop, mixed_popnum, g_GlobalSettings->obj_num_);
        }
        else
        {
            // do nondominated sorting in the mixed population as the first selection pressure
            NonDominatedSort(mixed_pop, mixed_popnum, g_GlobalSettings->obj_num_);
        }

        // select individuals by rank
        while (1)
        {
            int temp_number = 0;// record the number of Pareto front of rank_index
            for (int i = 0; i < mixed_popnum; i++)
            {
                if (mixed_pop[i]->rank_ == rank_index)
                {
                    temp_number++;
                }
            }
            if (current_popnum + temp_number <= g_GlobalSettings->population_num_)
            {// add all individuals in Pareto front of rank_index to the population of the new offspring
                for (int i = 0; i < mixed_popnum; i++)
                {
                    if (mixed_pop[i]->rank_ == rank_index)
                    {
                        CopyIndividual(mixed_pop[i], parent_pop[current_popnum]);
                        current_popnum++;
                    }
                }
                rank_index++;
            }
            else// only rely on the 1st selection pressure is not enough, so elicit the crowding distance as the second selection pressure
            {
                std::cerr<<"only rely on the 1st selection pressure is not enough, so elicit the crowding distance as the second selection pressure."<<std::endl;
                break;
            }
        }

        #ifdef DEBUG
        // save the mixed_pop
        FILE *fpt = nullptr;
        fpt = fopen("mixed_pop.txt", "w");
        if (!fpt)
        {
            std::cerr<<"<Error!!!> Could not open file"<<std::endl;
            exit(-1);
        }
        for (int i = 0; i < mixed_popnum; i++)
        {
            for (int j = 0; j < g_GlobalSettings->obj_num_-1; j++)
            {
                fprintf(fpt,"%f\t",mixed_pop[i]->obj_[j]);
            }
            fprintf(fpt,"%f\n",mixed_pop[i]->obj_[g_GlobalSettings->obj_num_-1]);
        }
        fflush(fpt);
        fclose(fpt);

        // save the parent_pop before the CD or the Preference rank (absolute elite)
        FILE *fptr = nullptr;
        fptr = fopen("absolute_elite.txt", "w");
        if (!fptr)
        {
            std::cerr<<"<Error!!!> Could not open file"<<std::endl;
            exit(-1);
        }
        for (int i = 0; i < current_popnum; i++)
        {
            for (int j = 0; j < g_GlobalSettings->obj_num_-1; j++)
            {
                fprintf(fptr,"%f\t",parent_pop[i]->obj_[j]);
            }
            fprintf(fptr,"%f\n",parent_pop[i]->obj_[g_GlobalSettings->obj_num_-1]);
        }
        fflush(fptr);
        fclose(fptr);
        #endif

        // select individuals by crowding distance
        int sort_num = 0;// record
        int *pop_sort = new int[mixed_popnum];

        if (current_popnum < g_GlobalSettings->population_num_)
        {
            sort_num = CrowdingDistance(mixed_pop, mixed_popnum, pop_sort, rank_index);

            #ifdef DEBUG
            FILE *fptr = nullptr;
            fptr = fopen("survived_by_rank.txt", "w");
            if (!fptr)
            {
                std::cerr<<"<Error!!!> Could not open file"<<std::endl;
                exit(-1);
            }
            #endif
            while (1)
            {
                if (current_popnum < g_GlobalSettings->population_num_)
                {
                    CopyIndividual(mixed_pop[pop_sort[--sort_num]], parent_pop[current_popnum]);//(A, B): A->B
                    // save individuals survived by rank
                    #ifdef DEBUG
                    for (int j = 0; j < g_GlobalSettings->obj_num_-1; j++)
                    {
                        fprintf(fptr,"%f\t",parent_pop[current_popnum]->obj_[j]);
                    }
                    fprintf(fptr,"%f\n",parent_pop[current_popnum]->obj_[g_GlobalSettings->obj_num_-1]);
                    #endif
                    current_popnum++;
                }
                else
                {
                    break;
                }
            }
            #ifdef DEBUG
            fflush(fptr);
            fclose(fptr);
            #endif
        }

        // clear crowding distance value
        for (int i = 0; i < g_GlobalSettings->population_num_; i++)
        {
            parent_pop[i]->fitness_ = 0.0;
        }
        if (pop_sort)
        {
            delete[] pop_sort;
            pop_sort = nullptr;
        }
        return true;
    }
}