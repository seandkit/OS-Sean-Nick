#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main () {

	char* line;
	size_t length = 0;
	char buffer[2];
	while (getline(&line, &length, stdin) != -1) {

		if (strlen(line) == 8) {
			//printf("%.*sFF\n", (int)strlen(line) - 1, line);
			memcpy(buffer, &line[1], 2);
			int r = strtol(buffer, NULL, 16);
			memcpy(buffer, &line[3], 2);
			int g = strtol(buffer, NULL, 16);
			memcpy(buffer, &line[5], 2);
			int b = strtol(buffer, NULL, 16);
			printf("rgba(%d,%d,%d,255)\n", r, g, b);
		}
		else if (strlen(line) == 10){
			//printf("%s", line);
			memcpy(buffer, &line[1], 2);
			int r = strtol(buffer, NULL, 16);
			memcpy(buffer, &line[3], 2);
			int g = strtol(buffer, NULL, 16);
			memcpy(buffer, &line[5], 2);
			int b = strtol(buffer, NULL, 16);
			memcpy(buffer, &line[7], 2);
			int a = strtol(buffer, NULL, 16);
			printf("rgba(%d,%d,%d,%d)\n", r, g, b, a);
		}
	}

	return 0;
}

