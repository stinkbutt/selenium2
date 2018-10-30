# Used to install java, google chrome stable, chromedriver and Selenium Standalone

sudo add-apt-repository main
sudo add-apt-repository universe

sudo add-apt-repository ppa:webupd8team/java
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

# Install prerequisites
sudo apt-get update
sudo apt-get install -y unzip xvfb libxi6 libgconf-2-4 oracle-java8-installer google-chrome-stable

mkdir ./temp && cd ./temp

# Install Chrome Driver
wget https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip
wget https://selenium-release.storage.googleapis.com/3.13/selenium-server-standalone-3.13.0.jar
wget https://github.com/mozilla/geckodriver/releases/download/v0.23.0/geckodriver-v0.23.0-linux64.tar.gz
unzip chromedriver_linux64.zip
tar xvfb geckodriver-v0.23.0-linux64.tar.gz

sudo chown root:root *
sudo mv chromedriver /usr/bin/chromedriver
sudo mv geckodriver /usr/bin/geckodriver
sudo chmod +x /usr/bin/chromedriver /usr/bin/geckodriver