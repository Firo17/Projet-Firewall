to install logwhatch we have create Folder 
"/var/cache/logwatch"
 necessary for the proper functioning of logwatch:
 "sudo mkdir /var/cache/logwatch" 
 "sudo apt-get install logwatch"
 we have to edit the file "/etc/logwatch/conf/logwatch.conf" using any test editor 
 To record  in a file we use for example "logFile" or "Output" as in "var/log/ssh_attempts.log/"
 to make record for 24 hours 
 "logFile= /var/log/server_logs.txt"
edit "Range = today"
and save it 


