#include <stdio.h>
#include <string.h>

int ensurergba () {

	char* line;
	size_t length = 0;
	while (getline(&line, &length, stdin) != -1) {

		line[length - 1] = '\0';
		if (line[length - 8] == '#') {
			printf("%sFF\n", line);
		}
		else {
			printf("%s\n", line);
		}
	}

	return 0;
}

