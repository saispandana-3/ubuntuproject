FROM ubuntu:latest

WORKDIR /saibaba

COPY . /saibaba

RUN  apt-get update && apt-get  install openssh-server -y

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
