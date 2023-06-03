install fail2ban 
we use "systemctl" 
"systemctl start fail2ban"
to enbale it 
"systemctl enable fail2ban"
we need to edit "etc/fail2ban/jail.conf"
to More than 5 failed login attempts to a user account (ftp or ssh)
For the "FTP" we have to add 
"
[vsftpd]
enabled = true 
port = ftp 
filter = vsftpd
logpath = /var/log/vsftpd.log
maxretry = 5
bantime = 3600
"
 
 For the "SSH" we have to add 
"
[ssh]
enabled = true 
port = ssh 
filter = sshd
logpath = /var/log/auth.log
maxretry = 5
bantime = 3600
"

and save the file 


*for More than 10 requests via the same IP to the FTP server*
edit "etc/fail2ban/jail.conf" to 

"
[vsftpd]
enabled = true 
port = ftp 
filter = vsftpd
logpath = /var/log/vsftpd.log
maxretry = 10
bantime = 3600
"


for More than 20 FTP server connection requests even from different users in 5 minutes
be interpreted as a sign of TBF (Attempt at Brute Force). 
we have to edit  "etc/fail2ban/jail.conf" to

"
[vsftpd]
enabled = true 
port = ftp 
filter = vsftpd
logpath = /var/log/vsftpd.log
maxretry = 20
findtime = 300
bantime = 3600
action = iptables [name=FTP, port=ftp, protocol=tcp]
"

