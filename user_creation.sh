#!/bin/bash

#check if root user
if [[ $UID -ne 0 ]]
then
     echo "You must be root to run this script."
        exit 1
fi

#check input arguments
if [[ $#  -lt 1 ]]
then
     echo "Usage: ${0} USER_NAME [COMMENT]..."
        exit 1
fi

#store the arguments in variables
user_name=${1}
shift
comment=${@}

#generate the password
password=$(date +%h%m%s)

#create the user
useradd -c "${comment}" -m "${user_name}"

#check if the user was created successfully
if [[ ${?} -ne 0 ]]
then
     echo "user creation failed."
        exit 1
fi  

# set the password
echo "${user_name}:${password}" | chpasswd

#check if the password was set successfully
if [[ ${?} -ne 0 ]]
then
        echo "password creation failed."
        exit 1
fi

#force password change on first login
passwd -e ${user_name}

#display the username, password, and hostname
echo "user created successfully."
echo "username: ${user_name}"
echo "password: ${password}"
echo "hostname: $(hostname)"
