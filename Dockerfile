FROM centos:latest
RUN yum install -y git psmisc net-tools bash-completion sudo
RUN cd /root && git clone https://github.com/WilsonDhChen/mediasrv_linux.git
RUN cd /root/mediasrv_linux/mediasrv && chmod 777 ./mediasrv && chmod 777 ./mediasrv_sh
RUN cd /root && echo "Run /root/mediasrv_linux/mediasrv/mediasrv_sh to start the service." > README_FIRST
RUN cd /root/mediasrv_linux && mkdir swap && cp /root/mediasrv_linux/mediasrv/mediasrv.ini /root/mediasrv_linux/swap
EXPOSE 280
EXPOSE 281
EXPOSE 554
EXPOSE 1935
VOLUME /root/mediasrv_linux/swap
CMD bash