# Compose-hddfancontrol2

```
sudo docker build .


sudo docker run --privileged -d --env DEVICES=/dev/sdb --env PWM=/sys/class/hwmon/hwmon6/pwm3:200:30 sha256:xxx
```