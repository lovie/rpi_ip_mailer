Checks for Internet IP address changes and sends a mail with the new IP address incase it has.


Step 1
======
Configure mail by installing

sudo apt-get install ssmtp 
sudo apt-get install mailutils
sudo apt-get install mpack


Step 2
======
Edit mail config using:

sudo vi /etc/ssmtp/ssmtp.conf

Replace contents with:

AuthUser=youruserid@gmail.com
AuthPass=userpass
FromLineOverride=YES
mailhub=smtp.gmail.com:587
UseSTARTTLS=YES

Step 3
======

Install a crontab to run the script automatically

Sample (Runs Daily at 5 AM):
0 5 * * * sudo /home/pi/scripts/ipcheck/ipcheck.sh>/dev/null
