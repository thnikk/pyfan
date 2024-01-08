# pyfan
A simple script for controlling GPU fans. I've only tested this on an AMD GPU, but there's no reason for it to not work on an nvidia card as long as the driver makes a hwmon interface for it.

## Configuration
Pyfan uses a json file located at `/etc/pyfan.json`. It will create a default config on first run, which needs to be edited before the script will do anything. The default config will only turn the fan on at 60 degrees and scale the fan speed linearly with temperature until it hits 100% at 80 degrees. You will need to change the vid:pid to the actual vendor and product IDs for your card(s), which you can find with `lspci -nn`.

## Installation
1) Run `sudo make install` to install the script and service file.
2) Run the script manually to create the config file.
3) Edit the config file in `/etc/pyfan.json` and replace vid:pid with your card's vendor and product IDs.
4) Enable the service with `sudo systemctl enable --now pyfan.service`.
