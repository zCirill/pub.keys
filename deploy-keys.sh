mkdir .ssh
touch .ssh/authorized_keys
chmod 0600 -R .ssh
ipinfo=$(curl https://raw.githubusercontent.com/zCirill/pub.keys/master/shka.pub)
echo $ipinfo >> .ssh/authorized_keys

apt-get update
apt upgrade -y
apt autoremove -y
apt install tmux git aptitude -y
shutdown -r now
