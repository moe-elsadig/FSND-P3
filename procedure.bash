# host
mkdir project ; cd project
vagrant init ubuntu/trusty64
vagrant up
vagrant ssh
# vagrant
sudo apt-get install language-pack-UTF-8
sudo locale-gen UTF-8
sudo apt-get update
sudo apt-get upgrade
sudo apt-get autoremove
cat /etc/apt/sources.list # to view list of sources available to obtain packages through apt 
sudo apt-get install finger
finger
finger vagrant 
cat /etc/passwd
sudo adduser grader # usr: grader pwd: grader Fullname: The Udacity Project Grader
finger grader
sudo cat /etc/sudoers
sudo ls /etc/sudoers.d
sudo cp /etc/sudoers.d/vagrant /etc/sudoers.d/grader
sudo nano /etc/sudoers.d/grader # > change vagrant to grader and save the changes
# host
ssh-keygen # > Users/user/.ssh/linuxCourse and linuxCourse.pub
# grader
mkdir .ssh
touch .ssh/authorized_keys # copy the content of linuxCourse.pub into this file and save it
chmod 700 .ssh
chmod 644 .ssh/authorized_keys
sudo apt-get install apache2 # should be accessible by the host on localhost:8080
sudo apt-get install libapache2-mod-wsgi
sudo nano /etc/apache2/sites-enabled/000-default.conf
    WSGIScriptAlias / /var/www/html/myapp.wsgi
sudo apache2ctl restart

