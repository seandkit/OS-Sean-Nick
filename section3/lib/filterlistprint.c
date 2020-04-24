#include <stdio.h>
#include <string.h>

int main () {

	char* line;
	char* path;
	char* currpath;
	int lowest, highest, counter;
	float average;
	int print = 0;
	int part = 0;
	size_t length = 0;
	while (getline(&line, &length, stdin) != -1) {
		path = strtok(line, "\"");
		while (path != NULL) {
			if (part == 0) {
				if (strcmp(path, currpath) != 0) {
					if (print == 1) {
						printf("\n\x1B[33mPath:\"%s\" Total Requests: %d \n\x1B[32mShortest Time: %d\n\x1B[31mLongest Time: %d\n\x1B[34mAverage Processing Time: %.1f\n\n\n", currpath, counter, lowest, highest, average/counter);
					}
			  	strcpy(currpath, path);
					print = 1;
					lowest = 0;
					highest = 0;
					average = 0;
					counter = 0;
				}
					part = 1;
			}
			else {
				int charcount = 0;
				char tempc = path[0];
				int digit, number = 0;
				while (tempc != '\n') {
					if (tempc >= '0' && tempc <= '9') {
						digit = tempc - '0';
						number = number*10 + digit;
					}
					++charcount;
					tempc = path[charcount];
				}
				average += number;
				if (counter == 0) {
					lowest = number;
					highest = number;
				}
				else if (number > highest) {
					highest = number;
				}
				else if (number < lowest) {
					lowest = number;
				}
				++counter;
				part = 0;
			}
			path = strtok(NULL, "\"");
		}
	}
	printf("\x1B[33mPath:\"%s\" Total Requests: %d \n\x1B[32mShortest Time: %d\n\x1B[31mLongest Time: %d\n\x1B[34mAverage Processing Time: %.1f\n\n\n\x1B[37m", currpath, counter, lowest, highest, average/counter);
	return 0;
}
