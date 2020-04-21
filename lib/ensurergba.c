#include <stdio.h>
#include <string.h>

int ensurergba () {

	char* line;
	size_t length = 0;
	while (getline(&line, &length, stdin) != -1) {

		if (strlen(line) == 8) {
			printf("%.*sFF\n", (int)strlen(line) - 1, line);
		}
		else {
			printf("%s", line);
		}
	}

	return 0;
}

