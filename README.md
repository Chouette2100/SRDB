# SRDB

次のようにデータベースを作成します。
当然usernameのユーザが下記操作を行うための権限を持っていることが前提です。

```
$ mysql -p -u username
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
......

mysql> make create database databasename;

mysql> use databasename

mysql> source CreateDB.sql

mysql> 
```
