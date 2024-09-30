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
#
fn=`date +%Y%m%d_%H%M`.sql
mysqldump -h 127.0.0.1 -P 9999 -u root -p --no-data showroom > Schema$fn

