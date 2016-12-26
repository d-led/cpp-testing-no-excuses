Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision "shell", privileged: true, inline: <<-SHELL
    apt-get -y install git build-essential ruby libboost-all-dev liblua5.1-0-dev lua5.1 luarocks
    sudo luarocks install busted
    sudo gem install cucumber
    echo cd /vagrant >> `pwd`/.profile
  SHELL

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end
end
