# This runs Section 3 Task 4
run-task-11:
	cat access.log | egrep "(MSIE [0-9].[0-9];|Trident/7.0;|rv:11.0)" > access.ie.log  
