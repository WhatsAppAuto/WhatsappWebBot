set -e
export DEBIAN_FRONTEND=noninteractive
ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime
apt install -y python3 python-is-python3 python3-pip wget tar firefox git
dpkg-reconfigure --frontend noninteractive tzdata
update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1
apt autoremove -y
apt clean
