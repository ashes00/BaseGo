#!/bin/bash

# This script automates the basic setup process for a new Ubuntu machine.
# Provides: OS update, OS upgrade, Installs predefined set of applications, and then provides basic system information.
# 09/20/2024,  Ashley Anderson, ashes00@gmail.com

# Define Variables
# Define the wait time
Waittime=1
# Define color codes
YELLOW='\033[1;33m' # Accent Color
NC='\033[0m' # No Color
# Define, and preload the app list with the applications
Apps="nano,curl,htop,unzip,wget,openssh-server"

# Function to perform updates and installations
Update() {
    # Ask for root password
    echo "Please enter your root password:"
    sudo -v

    # Update package list
    echo -e "${YELLOW}Updating package list...${NC}"
    sudo apt update
    sleep $Waittime

    # List upgradable packages
    echo -e "${YELLOW}Checking for upgradable packages...${NC}"
    sudo apt list --upgradeable
    sleep $Waittime

    # Upgrade installed packages
    echo -e "${YELLOW}Upgrading installed packages...${NC}"
    sudo apt upgrade -y
    sleep $Waittime

    # Install applications
    echo -e "${YELLOW}Installing applications: $Apps...${NC}"
    sudo apt install -y ${Apps//,/ }
    sleep $Waittime

    # Report installation completion
    echo -e "${YELLOW}All applications have been installed.${NC}"
}

# Function to report system information
Report() {
    # Collect system information
    hostname=$(hostname)
    ip_address=$(hostname -I | awk '{print $1}')
    dns_servers=$(resolvectl status | grep 'DNS Servers' | awk '{print $3}' | tr '\n' ' ')
    pretty_name=$(grep PRETTY_NAME /etc/os-release | cut -d '=' -f 2 | tr -d '"')

    # Prepare the info variable
    Info="Hostname: $hostname
IP Address: $ip_address
Upstream DNS Servers: $dns_servers
OS: $pretty_name"

    # Print "*" to the terminal 5 times
    for i in {1..5}; do
        echo "*"
    done

    # Display the collected information
    echo -e "${YELLOW}$Info${NC}"
}

# Main program flow
Update
Report

# Exit the script
exit 0
