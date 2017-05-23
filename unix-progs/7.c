#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

int main()
{
	int i;
	pid_t pid;
	//Creating three children processes
	for(i = 0; i < 3; i++)
	{
		pid = fork();
		if(pid < 0)
		{
			printf("Error occured!\n");
			exit(-1);
		}
		else if(pid == 0)
		{
			printf("Child process (%d): %d\n", i+1, getpid());
		}
		//Parent process
		else
		{
			wait(NULL);
			if(i == 2)
				printf("-------------------------\n");
			printf("Child process (%d) completed!\n", i+1);
			exit(0);
		}
	}
	return 0;
}