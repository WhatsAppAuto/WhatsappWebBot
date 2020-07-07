set -e
apt -y purge firefox
if [[ $(arch) == "x86_64" ]]; then
  wget https://download-installer.cdn.mozilla.net/pub/firefox/releases/61.0.2/linux-x86_64/en-US/firefox-61.0.2.tar.bz2
  tar xvjf firefox-61.0.2.tar.bz2
  rm firefox-61.0.2.tar.bz2
  mv firefox /opt
  ln -s /opt/firefox/firefox /usr/local/bin/firefox
elif [[ $(arch) == "armv7l" ]]; then
  wget https://github.com/jdonald/firefox-armhf/releases/download/60.5.0-esr/firefox-esr_60.5.0esr-1.deb9u1_armhf.deb
  if ! dpkg -i firefox-esr_60.5.0esr-1.deb9u1_armhf.deb; then
    apt update
    apt install -f -y
  fi
  rm firefox-esr_60.5.0esr-1.deb9u1_armhf.deb
fi
