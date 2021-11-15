from ubuntu
USER root
RUN echo "root:Passw0rd" | chpasswd
RUN DEBIAN_FRONTEND="noninteractive" apt-get update -y
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y openjdk-8-jdk-headless wget openssh-server tar vim
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y apache2
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y python3 python3-pandas
RUN echo '<H1>Hello...</H1>' > /var/www/index.html
EXPOSE 22 8088 50070 11 80
CMD /usr/sbin/apache2ctl -D FOREGROUND