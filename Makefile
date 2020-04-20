# This runs Section 3 Task 3
run-task-10:
	 cat access.log | grep '404 [0-9]' | egrep -o  '".*" ' 

