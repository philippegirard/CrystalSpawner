#include <stdio.h> 
#include <stdlib.h> 
#include <sys/types.h>
#include <unistd.h> 

int main(int argc, const char * argv[]) {

	printf("Hello from Spawner\n");


	pid_t pid;

	char * my_args[5];

	char * p_name = "c_exe";

	my_args[0] = p_name;
	my_args[1] = "a";
	my_args[2] = "b";
	my_args[3] = "c";
	my_args[4] = NULL;

    switch ((pid = fork())) {
    	case -1:
    		// The fork has failed
    		perror("Fork");
    		break;
    	case 0:
    		execv (p_name, my_args);
      		puts("execv() failed");
    		// This is the child process
    		break;
    	default:
    		// This is the parent process
    		break;
    }

    printf("Out of Spawner\n");

    return 0;
}