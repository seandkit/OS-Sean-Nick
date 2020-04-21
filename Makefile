# This runs Section 3 Task 5
run-task-12:
	 cat access.log | grep -P ' ([5-9]|[0-9][0-9]) ' | egrep -o  '".*" ' | sort | uniq -c

