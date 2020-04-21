CC				= gcc
FLAGS			= -Wall -Wextra -Wpedantic
SOURCES		= $(wildcard *.c) $(wildcard lib/*.c)
OBJECTS 	= $(patsubst %.c, build/%.o, ${SOURCES})

# This target is the final compile and depends on other targets
link: ${OBJECTS}
	${CC} $^ -o build/main

# This target compiles just the main.c (creates an object file)
build/main.o: main.c
	${CC} -c ${FLAGS} $< -o $@

# This target compiles just the lib/*.o (creates an object file)
build/lib/%.o: lib/%.c
	${CC} -c ${FLAGS} $< -o $@

# Removes all built files, and re-created the build directory
clean:
	rm -rf ./build && mkdir -p build/lib

# Run the solution
run:
	./build/main

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
	grep -x '^#[a-zA-Z0-9]\{6,8\}' colours.txt

# This runs Section 2 Task 2
run-task-6:
	grep -x '^#[a-zA-Z0-9]\{6,8\}' colours.txt | cut -c4-5

# This runs Section 2 Task 3
run-task-7: ${OBJECTS}
	${CC} $^ -o build/main;
	grep -x '^#[a-zA-Z0-9]\{6,8\}' colours.txt | ./build/main > rgba-colours.txt
