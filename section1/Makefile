STRING = The quick brown fox jumps over the lazy dog \n

# Removes all built files, and re-created the build directory
clean:
	rm -rf ./build && mkdir -p build

# This runs Section 1 Task 1
run-task-1:
	printf "${STRING}" | wc -w

# This runs Section 1 Task 2
run-task-2:
	printf "${STRING}" | tr a-z A-Z

# This runs Section 1 Task 3
run-task-3:
	curl "https://www.dkit.ie/" > ./build/dkit.html

# This runs Section 1 Task 4
run-task-4:
	(tail -1 ./build/dkit.html; head -1 ./build/dkit.html) | tr '<>' '[]' > ./build/mangled.txt
