#! /bin/bash
#
# リモートのMySQLサーバーにSSHトンネリングを使用してport=xxxx で接続できることを前提にしたバックアップ
#
# 	SSHトンネルの作り方
#
# 		$ ssh -p xxxx  -o ServerAliveInterval=60 -N -L xxxx:127.0.0.1:3306 xxxxxxxx@xxx.xxx.xxx.xxx
#
#		接続先は MySQLサーバーの所在は 127.0.0.1:3306 のところ。SSHのサーバーとMySQLサーバーが別であれば
#		127.0.0.1をMySQLサーバーのアドレスに変える。
#
#	--single-transaction オプションがある限り --source-data の指定があっても --lock-all-tables が有効になることはない。
#	--quote-names があった方が安全だが、これはデフォルトでonになっている。
#	--mastaer-data のオプションはそのうち使えなくなるので --source-data を使う。
#
#
#	リストア
#		https://dev.mysql.com/doc/refman/8.0/ja/point-in-time-recovery-binlog.html
#		https://www.tohoho-web.com/ex/mysql-mysqldump.html
#		https://server-setting.info/centos/mysq-binlog-rollback.html
#
#
#
dumpfn=`date +%Y%m%d_%H%M`.sql
echo "#" `date +%Y-%m-%d_%H:%M:%S` > $dumpfn
mysqldump --single-transaction --flush-logs --source-data=2 -u root --pxxxxxxxxx -P 9999 -h 127.0.0.1 --databases showroom >> $dumpfn
echo "#" `date +%Y-%m-%d_%H:%M:%S` >> $dumpfn
