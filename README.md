# Compose-hddfancontrol2

## Info

Docker image for https://github.com/desbma/hddfancontrol

My goal is to use this on truenas scale to allow changing my fans based on drive temp.

There are some other containers available like this one, but hddfancontrol recently got an update to V2, so I decided to make my own (and I couldn't get to others working)


**NOTE**: I am experimenting with github actions to build docker images ect. - open to feedback, but this is mostly for personal use and decided to share.

## Usage

You might have to run `sensors-detect` to enable this container to "see" the fans/PWM.

1. Run the docker-compose file.
2. You can check some examples in `.env` file to show how to use this.

**NOTE**: I'm also still experimenting with hddfancontrol - getting it to run easily on truenas was only the first hurdle