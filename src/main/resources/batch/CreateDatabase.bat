@echo off

psql -U postgres -P 5432 -f ../sql/init.sql

pause
