FROM mysql

# environment variables
ENV MYSQL_DATABASE sn
ENV MYSQL_ROOT_PASSWORD 12345

# mysql configuration file
ADD my.cnf /etc/mysql/conf.d/my.cnf

# copy sql scripts
COPY ./sql-scripts /docker-entrypoint-initdb.d/

EXPOSE 9000