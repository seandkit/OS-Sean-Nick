# This runs Section 1 Task 4
run-task-4:
	(tail -n 1 dkit.html; head -n 1 dkit.html) > mangled.txt | tr '<>' '[]' < mangled.txt
	
