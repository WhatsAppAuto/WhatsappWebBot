set -e
if [[ "$(arch)" == "x86_64" ]];then
  wget -O geckodriver.tar.gz https://github.com/mozilla/geckodriver/releases/download/v0.23.0/geckodriver-v0.23.0-linux64.tar.gz
else
  wget -O geckodriver.tar.gz https://github.com/mozilla/geckodriver/releases/download/v0.23.0/geckodriver-v0.23.0-arm7hf.tar.gz
fi
mkdir /opt/geckodriver
tar -xzf geckodriver.tar.gz -C /opt/geckodriver
rm geckodriver.tar.gz
ln -s /opt/geckodriver/geckodriver /usr/local/bin/geckodriver
