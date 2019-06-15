# FSND-P3


#### The IP address and SSH port so your server can be accessed by the reviewer.

* The IP of the VPS/VM is `159.65.204.252`. 

* The SSH port has been changed to **2200** and is the only one allowed to SSH into the VPS/VM, and to SSH in you can use `ssh grader@159.65.204.252 -p 2200`

* A key has also been created for the grader user and you can use `ssh grader@159.65.204.252 -p 2200 -i [PATH_TO_KEY/udacityProject]`


#### The complete URL to your hosted web application.

* Because Google doesn't accept IP addresses as top level domains I opted to go with **nip.io** which is a suggestion from the Udacity Student Hub. Therefore the domain to use to access the Web Application is `http://159.65.204.252.nip.io/`.

#### A summary of software you installed and configuration changes made.

* Prepare the host
** `update`, `upgrade` and `autoremove` any unecessary left-over file using `sudo apt-get`

* Authentication and Authorization
** Add a user named `grader` to allow for SSH
** Generated an SSH Key to allow SSH login with it and placed it in the `.ssh/authorized_keys` file for the user `grader`. Do note that you'll need to modify the access of the directory and file using `chmod 700` on the directory and `chmod 644` on the file.
** Set the user `grader` to be a sudoer but including it in the `../sudoers.d/` directory
** Set the rules for the UFW (Uncomplicated Firewall) to allow the SSH port: **2200**, HTTP port: **80**, and NTP port: **123**. 
** Modify the file `/etc/ssh/sshd_config` to reflect the port change for SSH
** Enable the UFW after setting the settings `ufw enable ; ufw status` and view its status.


* Networking
** 


* Application Dependencies
** 



iv. A list of any third-party resources you made use of to complete this project.

