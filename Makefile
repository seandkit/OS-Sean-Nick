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
>>>>>>> 6698a82be90102e982b3fffa7c88802a8032f9f3

# This runs Section 2 Task 2
run-task-6:
	grep -x '^#[a-zA-Z0-9]\{6,8\}' colours.txt | cut -c4-5

# This runs Section 3 Task 5
run-task-12:
 	cat access.log | grep -P ' ([5-9]|[0-9][0-9]) ' | egrep -o  '".*" ' | sort | uniq -c
