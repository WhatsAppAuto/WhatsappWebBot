set -e
if ! pip list | grep webwhatsapi; then
  if [ -d .tmp ]; then
    rm -rf ".tmp"
  fi
  git clone "https://github.com/mukulhase/WebWhatsapp-Wrapper.git" ".tmp/WebWhatsapp-Wrapper"
  cp ".tmp/WebWhatsapp-Wrapper/README.md" ".tmp/WebWhatsapp-Wrapper/README.rst"
  pip install -r ".tmp/WebWhatsapp-Wrapper/requirements.txt"
  pip install ".tmp/WebWhatsapp-Wrapper"
  rm -rf ".tmp"
fi
