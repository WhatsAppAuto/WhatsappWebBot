set -e
export DEBIAN_FRONTEND=noninteractive
ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime
apt install -y python3 python3-pip wget tar firefox git
if [[ $(arch) == "x86_64" ]]; then
  dpkg-reconfigure --frontend noninteractive tzdata
fi
apt autoremove -y
apt clean
