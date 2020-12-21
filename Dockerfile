FROM debian 

MAINTAINER Iago O. Lima

RUN apt-get -y update
RUN apt-get -y install git libncurses5-dev libncursesw5-dev make gcc
RUN git clone https://github.com/iago-lima/ninvaders 
RUN make -C /ninvaders/ninvaders_project
ENTRYPOINT ./ninvaders/ninvaders_project/nInvaders
