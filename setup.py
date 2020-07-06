from setuptools import setup
from subprocess import check_call
from distutils.cmd import Command
from os import system

with open("README.md", 'r') as f:
    long_description = f.read()

check_call(['bash','docker/libraries_installation.sh'])

class RunCommand(Command):
    description='run the program in a docker instance'
    user_options=[]

    def initialize_options(self):
        pass

    def finalize_options(self):
        pass

    def run(self):
        if not system('docker images | grep whatsappwebbot')==0:
            check_call(['docker','build','-t','whatsappwebbot','docker'])
        system('docker run -it -v $(pwd):/data  whatsappwebbot /bin/bash -c "pip install -e . && whatsappwebbot"')

setup(
   name='Whatsapp Web Bot',
   version='0.0.1',
   description='A telegram bot that redirects all whatsapp messages to telegram',
   license="MIT",
   long_description=long_description,
   author='Riccardo Isola',
   author_email='riky.isola@gmail.com',
   url="https://github.com/RikyIsola/WhatsappWebBot",
   packages=['whatsappwebbot'],
   install_requires=['webwhatsapi'],
   scripts=[
            'scripts/whatsappwebbot',
           ],
    cmdclass={
    'run':RunCommand
    }
)
