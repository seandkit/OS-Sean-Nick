#include <stdio.h>
#include <string.h>

int main () {

	char* line;
	size_t length = 0;
  while (getline(&line, &length, stdin) != -1) {
		printf("%d,", (int)strtol(line, NULL, 16));
  }

	return 0;
}
