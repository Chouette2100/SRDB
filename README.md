# SRDB

次のようにデータベースを作成します。
当然usernameのユーザが下記操作を行うための権限を持っていることが前提です。

```
$ mysql -p -u username
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
......

mysql> drop database databasename;

mysql> CREATE DATABASE IF NOT EXISTS databasename DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

mysql> use databasename;

mysql> source CreateDB.sql

mysql> source Additional.sql
```

---

MySQLのインストールは以下のようにしています。

```
	$ sudo apt install mysql-server
	$ sudo mysql
	mysql> alter user 'root'@'localhost' identified with mysql_native_password by 'xxxxxxxxxx';
	mysql> create USER 'username'@'localhost' IDENTIFIED WITH mysql_native_password BY 'yyyyyyyy';
	mysql> GRANT CREATE, ALTER, DROP, INSERT, UPDATE, DELETE, SELECT, REFERENCES, RELOAD on *.* TO 'username'@'localhost' WITH GRANT OPTION;
	mysql> quit
    $
```

※ MySQLのインストールに際しては、mysql_secure_installation についても検討してください。
