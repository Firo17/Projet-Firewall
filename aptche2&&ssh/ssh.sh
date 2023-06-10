To install ssh :
sudo apt install openssh-server
You can check the status of the SSH service with the following command:
sudo systemctl status ssh
To stop the SSH host server, enter the following:
sudo service ssh stop
To start the SSH service, use the following command:
sudo service ssh start
To turn off SSH indefinitely, enter:
sudo systemctl disable ssh
