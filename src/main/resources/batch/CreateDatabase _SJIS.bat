@echo off
rem 環境変数の設定
set path=%path%;C:\Program Files\PostgreSQL\15\bin
rem ホスト名
set HOSTNAME=localhost
rem ポート番号
set PORTNUM=5432
rem ユーザ名
set USERNAME=postgres
rem パスワード名
set PGPASSWORD=password

psql -h %HOSTNAME% -p %PORTNUM% -U %USERNAME%  -f ../sql/init_SJIS.sql

pause
