FROM centos7 

COPY ./conf/nginx.repo /etc/yum.repos.d/nginx.repo

RUN yum -y install nginx-1.12.2 openssl --enablerepo=nginx                                                        \

EXPOSE 80 443

VOLUME /var/www/html /var/log/nginx /var/www/web

COPY ./conf/nginx-web.conf /etc/nginx/conf.d/default.conf

COPY ./conf/index.html /var/www/web/index.html

COPY ./bin/start.sh /start.sh

RUN chmod +x /start.sh

CMD /start.sh

