# Compose-hddfancontrol2

Docker image for https://github.com/desbma/hddfancontrol
My goal is to use this on truenas scale to allow ramping my fans based on drive temp.
There are some other containers available like this one, but hddfancontrol recently got an update to V2, so I decided to make my own (and I couldn't get to others working)

NOTE: I am experimenting with github actions to build docker images ect.

```
sudo docker build .


sudo docker run --privileged -d --env DEVICES=/dev/sdb --env PWM=/sys/class/hwmon/hwmon6/pwm3:200:30 sha256:xxx
```