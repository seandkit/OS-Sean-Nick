CC				= gcc
FLAGS			= -Wall -Wextra -Wpedantic

# Removes all built files, and re-created the build directory
clean:
	rm -rf ./build && mkdir -p build/lib

# This runs Section 1 Task 1
run-task-1:
	printf "The quick brown fox jumps over the lazy dog \n" | wc -w

# This runs Section 1 Task 2
run-task-2:
	printf "The quick brown fox jumps over the lazy dog\n" | tr a-z A-Z

# This runs Section 1 Task 4
run-task-4:
	(tail -n 1 dkit.html; head -n 1 dkit.html) | tr '<>' '[]' > mangled.txt

# This runs Section 2 Task 1
run-task-5:
	grep -x '^#[a-fA-F0-9]\{6,8\}' colours.txt

# This runs Section 2 Task 2
run-task-6:
	${CC} ${FLAGS} lib/hextodecimal.c -o build/lib/hextodecimal;
	grep -x '^#[a-fA-F0-9]\{6,8\}' colours.txt | cut -c4-5 | ./build/lib/hextodecimal

# This runs Section 2 Task 3
run-task-7:
	${CC} ${FLAGS} lib/ensurergba.c -o build/lib/ensurergba;
	grep -x '^#[a-fA-F0-9]\{6,8\}' colours.txt | ./build/lib/ensurergba | sort -t',' -k4 -n > rgba-colours.txt

# This runs Section 3 Task 2
run-task-9:
	cat access.log | cut -d' ' -f1 | sort -u

# This runs Section 3 Task 4
run-task-11:
	cat access.log | egrep "(MSIE [0-9].[0-9];|Trident/7.0;|rv:11.0)" > access.ie.log

