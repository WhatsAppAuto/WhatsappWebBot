set -e
export DEBIAN_FRONTEND=noninteractive
ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime
apt install -y python3 python3-pip wget tar firefox git
dpkg-reconfigure --frontend noninteractive tzdata
apt autoremove -y
apt clean
