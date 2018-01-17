FROM matrim/centos6.3

MAINTAINER alessandro.minoccheri@studiomado.it

ENV DB_NAME=mydb
ENV DB_USER=myuser
ENV DB_PASSWORD=mypassword

ADD create_mysql_user_and_database.sh /user/local/bin/create_mysql_user_and_database.sh
ADD db.sql /user/local/db.sql

RUN yum -y update && yum install -y mysql mysql-server mysql-devel

EXPOSE 3306

ENTRYPOINT chkconfig mysqld on && service mysqld start && chmod 755 /user/local/bin/create_mysql_user_and_database.sh && ./user/local/bin/create_mysql_user_and_database.sh && bash
