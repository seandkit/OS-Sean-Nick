# This runs Section 3 Task 1
run-task-9:
	cat access.log | cut -d' ' -f1 | sort -u

