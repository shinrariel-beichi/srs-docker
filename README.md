# ETS Mediasrv Docker Image

This repository includes a demo of `Dockerfile` to build a docker image contains [ETS Mediasrv Media Server](https://github.com/WilsonDhChen/mediasrv_linux) on Cent OS.  

If you want to use the image directly,you can push a ready-made image([See it on Docker Hub](https://hub.docker.com/r/zhouweitong/mediasrv-docker/)).Feel free to try it!  

Pull command:  
~~~
docker pull zhouweitong/mediasrv-docker
~~~
Docker run command:  
  
**Command must be run in the interactive mode(using parameter -it)**
~~~
docker run -it \
		-p 1935:1935 \
		-p 280:280 \
		-p 281:281 \
		-p 554:554 \
		zhouweitong/mediasrv-docker \
		bash
~~~
To run the LiveGO Media Server:
~~~
cd /root/mediasrv_linux/mediasrv && ./mediasrv_sh 
~~~  

**Notice:** `/root/mediasrv_linux/swap` is the swap folder for LiveGO configuration file,and is mounted by default.