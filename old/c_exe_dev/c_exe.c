#include <stdio.h>

int main(int argc, const char * argv[]) {

    printf("Hello, Spawner\n");

    while(argc--) {
    	printf("(%s)\n", argv[argc]);
    }

    return 0;
}