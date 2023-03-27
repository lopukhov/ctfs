FROM python:3.8-slim-buster

RUN apt-get update && apt-get -y upgrade

RUN mkdir /home/pwn
WORKDIR /home/pwn

RUN chmod 777 /home/pwn
RUN chmod +t /home/pwn

COPY www .
COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY flag.txt /.

RUN useradd -u 8888 -ms /bin/bash pwn
USER pwn

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
