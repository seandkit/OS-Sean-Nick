#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main () {

	char* line;
	size_t length = 0;
  while (getline(&line, &length, stdin) != -1) {
		printf("%d,", (int)strtol(line, NULL, 16));
  }
	printf("\n");
	return 0;
}
