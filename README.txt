Checks for Internet IP address changes and sends a mail with the new IP address incase it has.

Configure mail by installing

sudo apt-get install ssmtp 
sudo apt-get install mailutils
sudo apt-get install mpack


Then edit mail config using:

sudo vi /etc/ssmtp/ssmtp.conf

Replace contents with:

AuthUser=youruserid@gmail.com
AuthPass=userpass
FromLineOverride=YES
mailhub=smtp.gmail.com:587
UseSTARTTLS=YES

