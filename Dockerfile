FROM nginx:1.23.2
MAINTAINER Gudditi
WORKDIR  /usr/share/nginx/html
COPY ./index/ .
#RUN service nginx status 
EXPOSE 80
#CMD service nginx start

