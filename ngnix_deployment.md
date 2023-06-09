# How to create a virtual machine using vagrant via virtual box and install and run nginx

### Download VirtualBox

Install VirtualBox: Download and install VirtualBox from the official website: https://www.virtualbox.org/wiki/Downloads 
The latest version is 7, but the most stable version is 6.1, this is what I use.

### Download Vagrant

Install Vagrant: Download and install Vagrant from the official website: https://www.vagrantup.com/downloads
There are a couple of options to pick from, but if you are unclear on what version you want, pick the AMD64 version. 
To check it works, open git bash terminal and type in:
```vagrant```

The list of commands shows it is installed successfully.
![Alt text](pics_for_mds/vagrantcommand.png)

### Change your directory

Use command:
```cd<directory name>```
In my case its:
```cd tech230_vagrant_intro```
![Alt text](pics_for_mds/2023-05-11%20(3).png)

### Create a Vagrant file

To initilise Vagrant, run the command:
```vagrant init```
This will create a new Vagrant file in the current directory
![Alt text](pics_for_mds/Vagrantfile.png)

### Create a virtual machine

To create a virtual machine, run the command:
```vagrant up```
![Alt text](pics_for_mds/vagrantup.png)

Then go to your terminal and type the command:
```vagrant ssh```
This will generate ssh keys that we can use to secure shell to vagrant.
You have been successful when you see the change of the name in the terminal, it should say:
'vagrant@ubuntu-xenial:~$' in green and from here on we are in Linux and will be using th suitable commands.
![Alt text](pics_for_mds/vagrantssh.jpeg)

### Update packages

To get the latest update for our VM type the command:
```sudo apt-get update```
The code means:
- sudo = super user do - This gives you admin rights for that command.
- apt-get = This tells the computer to go get the packages
This command just tells us the packages that can be updated but does not upgrade them.

### Upgrade packages

To upgrade our VM type the command:
```sudo apt-get upgrade```
When prompted press 'Y' - or to skip this, type this command:
```sudo apt-get upgrade -y```


### Installing nginx

To install nginx, type the command:
```sudo apt-get install nginx -y```
To start nginx, type the command:
```sudo systemctl start```
To check the status, type command:
```sudo systemctl status```
(This last command kicks you from the VM so press ctrl + c and then vagrant ssh)

### Linking an IP

The VM needs an IP address so it has a destination.

Add:
```config.vm.network "private_network", ip:"192.168.10.100"```
To your Vagrant file, under:
```config.vm.box = "ubuntu/xenial64"```
It should look like this:
![Alt text](pics_for_mds/vagrant%20ip.png)
Finally to check you're connected go to the IP:
```192.168.10.100```
And you should see this:
![Alt text](pics_for_mds/2023-05-11%20(2).png)

### Automation of loading nginx, updating and upgrading

To create the automation for updating and upgrading linux and installing and starting nginx:
- Create a file called provisions.sh
- In this file make the first like the shebang of what shell youre using:
```#!/bin/bash```
- Then write all the following code
```sudo apt-get update -y```
```sudo apt-get upgrade -y```
```sudo apt-get install -y nginx```
```sudo systemctl enable nginx```
```sudo systemctl start nginx```
- The -y in the code will answer 'yes' to prompted questions

Once you have set that, you need to go back to your Vagrantfile and add another line of code under these 2 lines:
```config.vm.box = "ubuntu/xenial64"```
```config.vm.network "private_network", ip:"192.168.10.100"```
Then add this line of code under the first 2:
```config.vm.provision "shell", path: "provision.sh"```

"shell" - is a built-in provisioner in Vagrant that allows you to run shell scripts on the virtual machine.
"path"<filename> - is the path of the file you want to access.

This should have worked successfully, now run the command:
```vagrant up```
Now everything should update, uprgrade, install and run automatically! 