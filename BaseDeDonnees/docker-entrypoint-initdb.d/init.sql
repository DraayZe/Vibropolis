CREATE USER 'root'@'%' IDENTIFIED BY 'lenny';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
