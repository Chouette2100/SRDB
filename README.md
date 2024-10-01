※　システム全体の構成要素と各要素の整合性のとれるバージョンについては[SRCGI - README](https://github.com/Chouette2100/SRCGI/blob/main/README.md)の末尾にあります

# SRDB

・v1.2.2は掲示板のためのテーブル(bbslog)をCreateDB.sqlに含め、pointsテーブルにpointでのソートを高速化するためのindexを追加したものです。
・v1.2.1はv1.1.1に掲示板のためのテーブルを追加したものです。
・v1.1.1はv1.0.2に2-23-7-5Aの内容を適用したものです。
・V1.0.2はV1.0.1に20230519Aの内容を適用したものです。

---------------

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
