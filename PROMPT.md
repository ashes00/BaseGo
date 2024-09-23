Write a bash scrip that does the following.

1.  Write a module called $Update that performs the following functions.  
    A. Define, and set a variable called $Waittime for 1 seconds  
    B. Define a variable called $Apps that includes a list of application names seperated by a comma. Preload the app list with the applications wput & shed  
    C. Ask for root password, so it can be used for the commands to follow.  
    D. Runs the command "apt update"  
    E. Wait $Waittime  
    F. Runs the command "apt list --upgradeable"  
    G. Wait $Waittime  
    H. Runs the command "apt upgrade -y"  
    I. Wait $Waittime  
    J. Using the command "apt install", install $Apps. The command should include all applications to be installed.  
    K. Wait $Waittime  
    J. Reports All Applications ahge been installed. Text should be in color yellow  
    L. Exit $Update module
2.  Write a module called $Report that does the following.  
    A. Define a variable called $Info that includes a list of system information that includes hostname, IP address, Upstream DNS servers (From command "resolvectl status"), and PRETTY-NAME (from /etc/os-release)  
    B. Echo "\*" to the terminal, and go to the next line. Do this 5 times.  
    C. Display $Info Text should be in color yellow  
    D. Exit $Report module

Program Flow = Run $Update, Run $Report, Exit.