#pragma once
#define INF 1.0e9
#define PI 3.14159265358979323846
#define EPS 1.0e-6
#define MAX_THREAD_NUM 21
#define MAX_BUFFSIZE 256
#define DEBUG 0 // whether to debug
#define UsingGoldenFunction 0 // whether to use golden function as preference
#define MAX_QUEUE_SIZE -1 // max number of pairwise comparisons for training, <-1> means no limited
// #define GNUPLOT_COMMAND "gnuplot -persist"

#include <string>
#include <vector>
#include <time.h>
#include "core/individual.h"
#include "problem/problem.h"
#include "algorithms/algorithm.h"

#include "core/PyThreadStateLock.h"

#define DEBUG_MSG(description,value)
#ifndef DEBUG_MSG(description,value)
#define DEBUG_MSG(description,value) do{ \
    std::cout<<"<info> {"<<description<<": "<<value<<"}"<<std::endl; \
    }while(0);
#endif

//#define DEBUG_MSG(description,value)
#ifndef STDCOUT(description)
#define STDCOUT(description) do{ \
    std::cout<<"<info> "<<description<<std::endl; \
    }while(0);
#endif


namespace emoc {

	typedef struct
	{
		double crossover_pro;
		double eta_c;
	}SBXPara;

	typedef struct
	{
		double crossover_pro;
		double F;
		double K;
	}DEPara;

	typedef struct
	{
		double muatation_pro;
		double eta_m;
	}PolyMutationPara;



	// Global class holds all necessary parameter settings and datas for algorithms to run and
	// provides some useful foundmental functions. It can be considered as a manager class. A
	// global variable g_GlobalSettings is given to access all settings.
	// Note: the structure may be changed
	class Global
	{
	public:
		Global(const char *algorithn_name, const char *problem_name, int population_num, 
			int dec_num, int obj_num, int max_evaluation, int thread_num,int output_interval,
            int run_id = 0, int askTime = 10, int tau = 0, double step_size = 0.5, int inquiriesNum = 10,
            const char *weight_stringType= nullptr, const char *gold_stringType= nullptr, double kappa=1, int Q = 1000, int T = 100000);
		~Global();

		// initialize given population, i.e. set the decision variables' value
		void InitializePopulation(Individual **pop, int pop_num);
		void InitializeIndividual(Individual *ind);

		void Start();
		bool IsTermination();
		void DisplayMetrics();

	public:
		int dec_num_;
		int obj_num_;
		int thread_id_;
		int run_id_;

		int population_num_;
		int iteration_num_;
		int current_evaluation_;
		int max_evaluation_;
		int output_interval_;
		int askTime_;
		int tau_;// elicitation interval
		double step_size_;
		int inquiriesNum_;
        double kappa_;
		int Q_;
		int T_;
        std::string weight_stringType_;
        std::string gold_stringType_;

		std::string algorithm_name_;
		std::string problem_name_;

		std::vector<Individual*> parent_population_;
		std::vector<Individual*> offspring_population_;
		std::vector<Individual*> mixed_population_;

		double *dec_lower_bound_;
		double *dec_upper_bound_;

		SBXPara sbx_parameter_;
		DEPara de_parameter_;
		PolyMutationPara pm_parameter_;

		Problem *problem_;
		Algorithm *algorithm_;

	private:
		void Init();
		void SetDecBound();
		void InitializeProblem();
		void InitializeAlgorithm();
		void AllocateMemory();
		void DestroyMemory();
	};

	extern Global *g_GlobalSettingsArray[MAX_THREAD_NUM];  // provide global settings to whole project
}