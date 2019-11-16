# LearningMySQL

Install mysql to linux:
```
sudo apt update
sudo apt install mysql-server
sudo mysql_secure_installation
```

mysql ctl start

Import database:
```
sudo mysql < Chinook_MySql_AutoIncrementPKs.sql
```

mysql -u root -p < Chinook_MySql_AutoIncrementPKs.sql

Add a user:
```
CREATE USER 'username' IDENTIFIED BY 'password';
ALTER USER 'username' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON Chinook.* TO 'username';
```

Log your activity to a file/stop logging:
```
tee file.txt
notee
```

Apply an sql file to a database:
```
source test.sql
```

Create a user and grant perissions
```
CREATE USER 'Elliot'@'localhost' IDENTIFIED BY 'T3STsqlpass$!';
GRANT ALL PRIVILEGES ON *.* TO 'Elliot'@'localhost' WITH GRANT OPTION;
```
To satisfy the password cryptography requirement
```
pip install cryptography
```