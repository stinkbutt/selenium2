xvfb-run -a java -Dwebdriver.chrome.driver="/usr/bin/chromedriver" -Dwebdriver.gecko.driver="/usr/bin/geckodriver" -jar /usr/bin/selenium-server-standalone-3.13.0.jar -role node  -hub http://localhost:4444/grid/register

