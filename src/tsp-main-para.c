#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <limits.h>
#include <time.h>
#include <assert.h>
#include <complex.h>
#include <stdbool.h>
#include <unistd.h>

#include <pthread.h>

#include "tsp-types.h"
#include "tsp-job.h"
#include "tsp-genmap.h"
#include "tsp-print.h"
#include "tsp-tsp.h"


/* macro de mesure de temps, retourne une valeur en nanosecondes */
#define TIME_DIFF(t1, t2) \
  ((t2.tv_sec - t1.tv_sec) * 1000000000ll + (long long int) (t2.tv_nsec - t1.tv_nsec))


/* tableau des distances */
tsp_distance_matrix_t distance = {};

/** Param�tres **/

/* nombre de villes */
int nb_towns = 10;
/* graine */
long int myseed = 0;
/* nombre de threads */
int nb_threads = 1;

/* affichage SVG */
bool affiche_sol = false;

pthread_mutex_t mutexQueue;
pthread_mutex_t mutex;

int compt = 0;

void * ALL_IS_OK = (void*) 123456789L;

typedef struct t_args {
    long long int *cuts;
    tsp_path_t *sol;
    int *sol_len;
    struct tsp_queue *q;
} t_args;

static void generate_tsp_jobs(struct tsp_queue *q, int hops, int len, tsp_path_t path, long long int *cuts, tsp_path_t sol, int *sol_len, int depth) {
    if (len >= minimum) {
        (*cuts)++;
        return;
    }

    if (hops == depth) {
        /* On enregistre du travail � faire plus tard... */
        add_job(q, path, hops, len);
    } else {
        int me = path [hops - 1];
        for (int i = 0; i < nb_towns; i++) {
            if (!present(i, hops, path)) {
                path[hops] = i;
                int dist = distance[me][i];
                generate_tsp_jobs(q, hops + 1, len + dist, path, cuts, sol, sol_len, depth);
            }
        }
    }
}

static void usage(const char *name) {
    fprintf(stderr, "Usage: %s [-s] <ncities> <seed> <nthreads>\n", name);
    exit(-1);
}

void *fonctionThread(void * args) {
    //printf("thread start\n");
    t_args * thread_args = (t_args *) args;
    tsp_path_t solution;
    memset(solution, -1, MAX_TOWNS * sizeof (int));
    solution[0] = 0;
    while (!empty_queue(thread_args->q)) {
        int hops, len = 0;
        get_job(thread_args->q, solution, &hops, &len);
        tsp(hops, len, solution, thread_args->cuts, *thread_args->sol, thread_args->sol_len);
    }
    //printf("thread end\n");
    return ALL_IS_OK;
}

int main(int argc, char **argv) {
    unsigned long long perf;
    tsp_path_t path;
    tsp_path_t sol;
    int sol_len;
    long long int cuts = 0;
    struct tsp_queue q;
    struct timespec t1, t2;

    pthread_mutex_init(&mutex, NULL);

    /* lire les arguments */
    int opt;
    while ((opt = getopt(argc, argv, "s")) != -1) {
        switch (opt) {
            case 's':
                affiche_sol = true;
                break;
            default:
                usage(argv[0]);
                break;
        }
    }

    if (optind != argc - 3)
        usage(argv[0]);

    nb_towns = atoi(argv[optind]);
    myseed = atol(argv[optind + 1]);
    nb_threads = atoi(argv[optind + 2]);
    assert(nb_towns > 0);
    assert(nb_threads > 0);

    minimum = INT_MAX;

    /* generer la carte et la matrice de distance */
    fprintf(stderr, "ncities = %3d\n", nb_towns);
    genmap();

    init_queue(&q);

    clock_gettime(CLOCK_REALTIME, &t1);

    memset(path, -1, MAX_TOWNS * sizeof (int));
    path[0] = 0;

    /* mettre les travaux dans la file d'attente */
    generate_tsp_jobs(&q, 1, 0, path, &cuts, sol, & sol_len, 3);
    no_more_jobs(&q);

    pthread_t threads[nb_threads];
    t_args * thread_args[nb_threads];
    struct tsp_queue queues[nb_threads];
    long long int thread_cuts [nb_threads];

    //initialiser le struct de données pour chaque thread
    for (int i = 0; i < nb_threads; i++) {
        thread_cuts[i] = 0;
        thread_args[i] = malloc(sizeof (t_args));
        init_queue(&queues[i]);
        thread_args[i]->q = &queues[i];
        thread_args[i]->cuts = &thread_cuts[i];
        thread_args[i]->sol = &sol;
        thread_args[i]->sol_len = &sol_len;
    }

    //Distribuer les jobs pour chaque thread
    while (!empty_queue(&q)) {
        for (int i = 0; i < nb_threads; i++) {
            if (!empty_queue(&q)) {
                tsp_path_t solution;
                memset(solution, -1, MAX_TOWNS * sizeof (int));
                solution[0] = 0;
                int hops, len = 0;
                get_job(&q, solution, &hops, &len);
                add_job(&queues[i], solution, hops, len);
            } else {
                break;
            }
        }
    }

    /* calculer chacun des travaux */
    for (int i = 0; i < nb_threads; i++) {
        no_more_jobs(&queues[i]);
        //printf("On utilice le thread %d\n", i);
        if (pthread_create(&threads[i], NULL, fonctionThread, (void *) thread_args[i])) {
            printf("error creating thread");
        }
    }

    for (int i = 0; i < nb_threads; i++) {
        //printf("On attend le thread %d\n", i);
        pthread_join(threads[i], NULL);
        cuts += thread_cuts[i];
    }

    clock_gettime(CLOCK_REALTIME, &t2);
    if (affiche_sol)
        print_solution_svg(sol, sol_len);

    perf = TIME_DIFF(t1, t2);
    printf("<!-- # = %d seed = %ld len = %d threads = %d time = %lld.%03lld ms ( %lld coupures ) -->\n",
            nb_towns, myseed, sol_len, nb_threads,
            perf / 1000000ll, perf % 1000000ll, cuts);
    pthread_mutex_destroy(&mutex);
    return 0;
}
