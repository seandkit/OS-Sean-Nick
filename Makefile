# This runs Section 3 Task 2
run-task-9:
	cat access.log | cut -d' ' -f1 | sort -u

