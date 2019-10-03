FROM ubuntu

WORKDIR /usr/src/app

RUN apt update
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN apt-get install python3-pil -y
RUN apt-get install rpi.gpio -y
RUN pip3 install adafruit-circuitpython-ssd1306

COPY . .

CMD [ "python3", "./stats.py" ]