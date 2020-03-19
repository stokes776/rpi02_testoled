

Things that might need to be installed.

The OLED libraries
sudo apt-get install python3-pip
sudo pip3 install adafruit-circuitpython-ssd1306
sudo apt-get install python3-pil



To allow Docker Containers to access I2C:

As a security precaution, system devices are not exposed by default inside Docker containers. You can expose specific devices to your container using the --device option to docker run, as in:

docker run --device /dev/i2c-0 --device /dev/i2c-1 myimage

You can remove all restrictions with the --privileged flag:

docker run --privileged myimage

This will expose all of /dev to your container, and remove other restrictions as well (e.g., you will be able to change the network configuration in the container and mount new filesystems).

EDIT2
