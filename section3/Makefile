CC				= gcc
FLAGS			= -Wall -Wextra -Wpedantic

# Removes all built files, and re-created the build directory
clean:
	rm -rf ./build && mkdir -p build/lib

# This runs Section 3 Task 1
run-task-1:
	tail -10 access.log

# This runs Section 3 Task 2
run-task-2:
	cat access.log | cut -d' ' -f1 | sort -u

# This runs Section 3 Task 3
run-task-3:
	 cat access.log | grep ' 404 ' | egrep -o  '".*" '

# This runs Section 3 Task 4
run-task-4:
	cat access.log | egrep "(MSIE [0-9].[0-9];|Trident/7.0;|rv:11.0)" > ./build/access.ie.log

# This runs Section 3 Task 5
run-task-5:
	${CC} ${FLAGS} lib/filterlistprint.c -o build/lib/filterlistprint;
		cat access.log | egrep -o  '".* ([5-9]|[0-9][0-9]) "'| cut -d' ' -f1-3,5 | sort | ./build/lib/filterlistprint
