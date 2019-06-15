# FSND-P3


#### The IP address and SSH port so your server can be accessed by the reviewer.

* The IP of the VPS/VM is `159.65.204.252`. 

* The SSH port has been changed to **2200** and is the only one allowed to SSH into the VPS/VM, and to SSH in you can use `ssh grader@159.65.204.252 -p 2200`

* A key has also been created for the grader user and you can use `ssh grader@159.65.204.252 -p 2200 -i [PATH_TO_KEY/udacityProject]`


#### The complete URL to your hosted web application.

* Because Google doesn't accept IP addresses as top level domains I opted to go with **nip.io** which is a suggestion from the Udacity Student Hub. Therefore the domain to use to access the Web Application is `http://159.65.204.252.nip.io/`.


#### A summary of software you installed and configuration changes made.

* Prepare the host
    * `update`, `upgrade` and `autoremove` any unecessary left-over file using `sudo apt-get`
    * Changed the timezone to UTC using `timedatectl set-timezone UTC`

* Authentication and Authorization
    * Add a user named `grader` to allow for SSH
    * Generated an SSH Key to allow SSH login with it and placed it in the `.ssh/authorized_keys` file for the user `grader`. Do note that you'll need to modify the access of the directory and file using `chmod 700` on the directory and `chmod 644` on the file.
    * Set the user `grader` to be a sudoer but including it in the `../sudoers.d/` directory
    * Set the rules for the UFW (Uncomplicated Firewall) to allow the SSH port: **2200**, HTTP port: **80**, and NTP port: **123**. 
    * Modify the file `/etc/ssh/sshd_config` to reflect the port change for SSH
    * Enable the UFW after setting the settings `ufw enable ; ufw status` and view its status.

* Application & Dependencies
    * Used SCP to copy the application from another machine `scp [source] [destination]`
    * Removed all of the files related to vagrant
    * Modified the files to accommodate the change of IP and Port
    * Added a **WSGI** file to launch the application after renaming to main file to `__init__.py`
    * Created a limited PSQL User named catalog
    * Installed Git (but haven't used it)
    * Added a new apache2 config file `/etc/apache2/sites-available/udacityprojectfsnd3.conf` and modified it to point to the right folder, the right IP (with nip.io) and the log files which are very useful for debugging the application
    * Apache and wsgi can be used with `a2enmod wsgi`, `a2ensite`, `a2dissite`, `service apache2 reload`, `service apache2 restart`, and maybe `apache2ctl restart` depending on the system, these will help you activate/disable/reload/restart the site and its configurations
    * Dependencies:
        * libapache2-mod-wsgi-py3
        * postgresql
        * apache2
        * python-pip
        * oauth2client
        * finger
        * sqlalchemy


####  A list of any third-party resources you made use of to complete this project.

