CREATE USER 'user1'@'localhost' IDENTIFIED BY 'admin';
GRANT USAGE ON *.* TO 'user1'@'localhost' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;
GRANT ALL PRIVILEGES ON *.* TO 'user1'@'localhost';
flush privileges;