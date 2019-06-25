# 0x05. Processes and signals

## Table of contents
Files | Description
----- | -----------
[0-what-is-my-pid](./0-what-is-my-pid) | Bash script that displays its own PID
[1-list_your_processes](./1-list_your_processes) | Bash script that displays a list of currently running processes
[2-show_your_bash_pid](./2-show_your_bash_pid) | Bash script that displays lines containing the bash word, allowing to easily get the PID of the bash process
[3-show_your_bash_pid_made_easy](./3-show_your_bash_pid_made_easy) | Bash script that displays the PID, along with the process name, of processes whose name contain the word bash
[4-to_infinity_and_beyond](./4-to_infinity_and_beyond) | Bash script that displays To infinity and beyond indefinitely
[5-kill_me_now](./5-kill_me_now) | Bash script that kills 4-to_infinity_and_beyond process
[6-kill_me_now_made_easy](./6-kill_me_now_made_easy) | Bash script that kills 4-to_infinity_and_beyond process
[7-highlander](./7-highlander) | Bash script that displays To infinity and beyond indefinitely, With a sleep 2 in between each iteration, I am invincible!!! when receiving a SIGTERM signal
[8-beheaded_process](./8-beheaded_process) | Bash script that kills the process 7-highlander
[100-process_and_pid_file](./100-process_and_pid_file) | Bash script that: Creates the file /var/run/holbertonscript.pid containing its PID, Displays To infinity and beyond indefinitely, Displays I hate the kill command when receiving a SIGTERM signal, Displays Y U no love me?! when receiving a SIGINT signal, Deletes the file /var/run/holbertonscript.pid and terminates itself when receiving a SIGQUIT or SIGTERM signal
[101-manage_my_process](./101-manage_my_process) | Bash init script that manages the daemon manage_my_process
[manage_my_process](./manage_my_process) | Daemon script for task 101
[102-zombie.c](./102-zombie.c) | C program that creates 5 zombie processes.
