# pyfan
A simple script for controlling GPU fans. I've only tested this on an AMD GPU, but there's no reason for it to not work on an nvidia card as long as the driver makes a hwmon interface for it.

## Configuration
Pyfan uses a json file located at `/etc/pyfan.json`. It will create a default config on first run, which needs to be edited before the script will do anything. The default config will only turn the fan on at 60 degrees and scale the fan speed linearly with temperature until it hits 100% at 80 degrees. You will need to change the vid:pid to the actual vendor and product IDs for your card(s), which you can find with `lspci -nn`.

## Installation
A makefile is included to simplify installation. Run `sudo make install` to install the script and service file and enable the service with `sudo systemctl enable --now pyfan.service`. As mentioned above, you will need to edit the config, so you can either run the script manually before enabling the service or restart the service after you edit the config file with `sudo systemctl restart pyfan.service`.
