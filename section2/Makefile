CC				= gcc
FLAGS			= -Wall -Wextra -Wpedantic

# Removes all built files, and re-created the build directory
clean:
	rm -rf ./build && mkdir -p build/lib

# This runs Section 2 Task 1
run-task-1:
	egrep -o "^#[a-fA-F0-9]{6}|^#[a-fA-F0-9]{8}" colours.txt

# This runs Section 2 Task 2
run-task-2:
	${CC} ${FLAGS} lib/hextodecimal.c -o build/lib/hextodecimal;
	egrep -o "^#[a-fA-F0-9]{6}|^#[a-fA-F0-9]{8}" colours.txt | cut -c4-5 | ./build/lib/hextodecimal

# This runs Section 2 Task 3
run-task-3:
	${CC} ${FLAGS} lib/ensurergba.c -o build/lib/ensurergba;
	egrep -o "^#[a-fA-F0-9]{6}|^#[a-fA-F0-9]{8}" colours.txt | ./build/lib/ensurergba | sort -t',' -k4 -n > rgba-colours.txt
