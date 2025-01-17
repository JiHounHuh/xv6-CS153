#include "types.h"
#include "user.h"

int main(int argc, char *argv[])
{
	
	int exitWait(void);
	int waitPid(void);
	

  printf(1, "\n This program tests the correctness of your lab#1\n");
  
  if (atoi(argv[1]) == 1)
	exitWait();
  else if (atoi(argv[1]) == 2)
	waitPid();
  else 
   printf(1, "\ntype \"lab1 1\" to test exit and wait, \"lab1 2\" to test waitpid \n");
  
   
     	 exit(0);
     	  }
    

int exitWait(void) {
	  int pid, ret_pid, exit_status;
	   int i;
  //  test exit(int status) and wait(int* status)

    printf(1, "\n  Step 1: testing exit(int status) and wait(int* status):\n");
  
        for (i = 0; i < 2; i++) {
            pid = fork();
               if (pid == 0) { // child
                  if (i == 0)
                      {
                       printf(1, "\nThis is child with PID# %d and I will exit with status %d\n", getpid(), 0);
                        exit(0);
                       }
                         else
                          {
                          printf(1, "\nThis is child with PID# %d and I will exit with status %d\n" ,getpid(), -1);
                          exit(-1);
                           } 
                 } else if (pid > 0) { // parent
                    ret_pid = wait(&exit_status);
                    printf(1, "\n This is the parent: child with PID# %d has exited with status %d\n", ret_pid, exit_status);
                    } else  // error check
                      {  
                   printf(2, "\nError using fork\n");
                   exit(-1);
                     }
                    }
                 return 0;
                }

int waitPid(void){
	
  int ret_pid, exit_status;
  int i;
  int pid_a[5]={0, 0, 0, 0, 0};
 // use this part to test wait(int pid, int* status, int options)

   printf(1, "\n  Step 2: testing waitpid(int pid, int* status, int options):\n");

    for (i = 0; i <5; i++) {
       pid_a[i] = fork();
        	
        	    if (pid_a[i] == 0) { // child
			 printf(1, "\n The is child with PID# %d and I will exit with status %d\n", getpid(), 0);
         	         exit(0);}}
         	         sleep(5);
         	         printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[3]);
         	         ret_pid = waitpid(pid_a[3], &exit_status, 0);
         	         printf(1, "\n This is the parent: Child# %d has exited with status %d\n",ret_pid, exit_status);
         	         sleep(5);
         	          printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[1]);
         	          ret_pid = waitpid(pid_a[1], &exit_status, 0);
         	          printf(1, "\n This is the parent: Child# %d has exited with status %d\n",ret_pid, exit_status);
         	          sleep(5);
         	         printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[2]);
         	        ret_pid = waitpid(pid_a[2], &exit_status, 0);
         	          printf(1, "\n This is the parent: Child# %d has exited with status %d\n",ret_pid, exit_status);
         	           sleep(5);
         	          printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[0]);
         	        ret_pid = waitpid(pid_a[0], &exit_status, 0);
         	        printf(1, "\n This is the parent: Child# %d has exited with status %d\n",ret_pid, exit_status);
        	        sleep(5);        	                                                                                                                                              printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[4]);                                                                         ret_pid = waitpid(pid_a[4], &exit_status, 0);
         	          printf(1, "\n This is the parent: Child# %d has exited with status %d\n",ret_pid, exit_status);
         	                                                                                                                                                                
        	                                                                                                                                                                      return 0;
         	                                                                                                                                                                        }
