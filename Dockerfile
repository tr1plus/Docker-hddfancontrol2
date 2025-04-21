#Base
FROM debian
WORKDIR /hddfancontrol

#Dependencies
RUN apt update -y 
RUN apt install -y curl build-essential hdparm sdparm smartmontools

#Wget latest release - need to change to build from source
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
#don't know how to refresh path - have to hard code cargo path
RUN /root/.cargo/bin/cargo install hddfancontrol

#entrypoint
ENTRYPOINT hddfancontrol daemon -d ${DEVICES} -p ${PWM} --min-fan-speed-prct 10 -i 1min