FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=my_database

COPY databaseInitial.sql /docker-entrypoint-initdb.d/

EXPOSE 3306

CMD ["mysqld"]
