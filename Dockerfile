#Base
FROM debian
WORKDIR /hddfancontrol
#Dependencies
RUN apt update -y 
RUN apt install -y wget hdparm sdparm smartmontools lm-sensors fancontrol

#Wget latest release - need to change to build from source
RUN wget https://github.com/desbma/hddfancontrol/releases/download/2.0.2/hddfancontrol_2.0.2-1_amd64.deb
RUN dpkg -i hddfancontrol_2.0.2-1_amd64.deb

#run command - to use variables
ENTRYPOINT hddfancontrol daemon -d /dev/sda -p /sys/class/hwmon/hwmon6/pwm3:200:30 --min-fan-speed-prct 10 -i 1min