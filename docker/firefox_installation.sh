set -e
apt -y purge firefox
wget https://download-installer.cdn.mozilla.net/pub/firefox/releases/61.0.2/linux-x86_64/en-US/firefox-61.0.2.tar.bz2
tar xvjf firefox-61.0.2.tar.bz2
rm firefox-61.0.2.tar.bz2
mv firefox /opt
ln -s /opt/firefox/firefox /usr/local/bin/firefox
