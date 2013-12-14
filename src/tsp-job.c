/* impl�mentation des queues de jobs, nul besoin de lire dans un premier temps */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include <pthread.h>

#include "tsp-types.h"
#include "tsp-job.h"

struct tsp_job {
    tsp_path_t path;
    int hops;
    int len;
};

struct tsp_cell {
    struct tsp_job tsp_job;
    struct tsp_cell *next;
};

extern pthread_mutex_t mutexQueue;

void init_queue (struct tsp_queue *q) {
    q->first = 0;
    q->last = 0;
    q->end = 0;
}

int empty_queue (struct tsp_queue *q) {
    return ((q->first == 0) && (q->end == 1));
}

void add_job (struct tsp_queue *q, tsp_path_t p, int hops, int len) {
   struct tsp_cell *ptr;
   
   ptr = malloc (sizeof (*ptr));
   if (!ptr) {
      printf ("L'allocation a echoue, recursion infinie ?\n");
      exit (1);
   }
   ptr->next = 0;
   ptr->tsp_job.len = len;
   ptr->tsp_job.hops = hops;
   memcpy (ptr->tsp_job.path, p, hops * sizeof(p[0]));
      
   if (q->first == 0) {
       q->first = q->last = ptr;
   } else {
       q->last->next = ptr;
       q->last = ptr;
   }  
}

int get_job (struct tsp_queue *q, tsp_path_t p, int *hops, int *len) {
   struct tsp_cell *ptr;
   
   //Exclusion mutuelle
   //pthread_mutex_lock(&mutex);
   if (q->first == 0) {
	   //pthread_mutex_unlock(&mutex);
       return 0;
   }
   pthread_mutex_lock(&mutexQueue);
   ptr = q->first;
   
   q->first = ptr->next;
   if (q->first == 0) {
       q->last = 0;
   }
   pthread_mutex_unlock(&mutexQueue);

   *len = ptr->tsp_job.len;
   *hops = ptr->tsp_job.hops;
   memcpy (p, ptr->tsp_job.path, *hops * sizeof(p[0]));

   free (ptr);
   return 1;
} 

void no_more_jobs (struct tsp_queue *q) {
    q->end = 1;
}











