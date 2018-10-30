#!/bin/bash

# Used to install java, google chrome stable, chromedriver and Selenium Standalone
sudo add-apt-repository universe # for xvfb

# sudo add-apt-repository ppa:webupd8team/java 		# Installing openjdk via apt instead
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

# Install prerequisites
sudo apt-get update
sudo apt-get install -y unzip xvfb libxi6 libgconf-2-4 oracle-java8-installer google-chrome-stable firefox openjdk-8-jdk

#mkdir ./temp && cd ./temp


#wget https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip
#wget https://github.com/mozilla/geckodriver/releases/download/v0.23.0/geckodriver-v0.23.0-linux64.tar.gz

wget https://selenium-release.storage.googleapis.com/3.13/selenium-server-standalone-3.13.0.jar

unzip chromedriver_linux64.zip
tar zxfv geckodriver-v0.23.0-linux64.tar.gz

sudo chown root:root *

sudo mv selenium-server-standalone-3.13.0.jar /usr/bin/selenium-server-standalone-3.13.0.jar
sudo mv chromedriver /usr/bin/chromedriver
sudo mv geckodriver /usr/bin/geckodriver
sudo chmod +x /usr/bin/chromedriver /usr/bin/geckodriver

chromedriver --version
geckodriver --version