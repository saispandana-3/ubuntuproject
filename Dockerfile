FROM ubuntu:latest

WORKDIR /saibaba

COPY . /saibaba

RUN  apt-get  install openssh-server -y

EXPOSE 22

CMD ["/bin/bash", "-c", "/usr/sbin/sshd && tail -f /dev/null"]  
