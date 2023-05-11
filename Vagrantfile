Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", ip:"192.168.10.100"
  #provision the VM to have nginx
  #config.vm.provision "shell", inline: <<-SHELL
    #sudo apt-get update -y
    #sudo apt-get upgrade -y
    #sudo apt-get install -y nginx
    #sudo systemctl enable nginx
    #sudo systemctl start nginx
  #SHELL

  config.vm.provision "shell", path: "provisions.sh"

end
