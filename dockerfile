FROM heiniuer/centos7:v1.0.0
#安装 epel仓库
RUN (yum install -y epel-release && yum update -y)
#安装nginx
RUN yum install -y nginx
COPY conf.d/localhost.conf   /etc/nginx/conf.d/
COPY conf.d/nginx.conf   /etc/nginx/
COPY index.html  /usr/share/nginx/html/
COPY start.sh /
RUN chmod +x /start.sh
CMD ["/start.sh"]

