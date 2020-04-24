# Removes all built files, and re-created the build directory
clean:
	rm -rf ./build && mkdir -p build

# This runs Section 1 Task 1
run-task-1:
	printf "The quick brown fox jumps over the lazy dog \n" | wc -w

# This runs Section 1 Task 2
run-task-2:
	printf "The quick brown fox jumps over the lazy dog\n" | tr a-z A-Z

# This runs Section 1 Task 3
run-task-3:
	curl "https://www.dkit.ie/" > ./build/dkit.html

# This runs Section 1 Task 4
run-task-4:
	(tail -n 1 ./build/dkit.html; head -n 1 ./build/dkit.html) | tr '<>' '[]' > ./build/mangled.txt
