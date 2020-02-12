FROM node:10

MAINTAINER wuhaocn<wuhaocn@126.com>

#RUN yum -y install net-tools
#
#RUN yum -y install vim
#RUN apt-get update
#
#RUN apt-get install curl
#
#RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

ADD ./ /home/coral-rtc/

WORKDIR /home/coral-rtc/

CMD ["npm", "start"]
