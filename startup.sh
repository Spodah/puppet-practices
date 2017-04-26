setxkbmap fi
sudo apt-get update
sudo apt-get install -y git puppet
git clone https://github.com/Spodah/puppet-practices.git
sudo puppet apply --modulepath /home/kubuntu/puppet-practices -e class{"git:"}
sudo puppet apply --modulepath /home/kubuntu/puppet-practices -e class{"ipython:"}
