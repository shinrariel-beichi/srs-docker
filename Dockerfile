FROM centos:latest
RUN yum install -y git psmisc net-tools bash-completion sudo wget && \
	cd /root && git clone https://github.com/WilsonDhChen/mediasrv_linux.git && \
	cd /root/mediasrv_linux/mediasrv && chmod 777 ./mediasrv && chmod 777 ./mediasrv_sh && \
	cd /root && echo "Run /root/mediasrv_linux/mediasrv/mediasrv_sh to start the service." > README_FIRST && \
	cd /root/mediasrv_linux && mkdir swap && cp /root/mediasrv_linux/mediasrv/mediasrv.ini /root/mediasrv_linux/swap && \
VOLUME /root/mediasrv_linux/swap
CMD bash