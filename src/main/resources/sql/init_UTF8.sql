-- エンコードを確認
-- select current_setting('client_encoding');

-- 変更
set client_encoding to 'utf8';
-- ユーザ作成
CREATE USER testuser LOGIN PASSWORD 'testuser' CREATEDB;

CREATE DATABASE test;

-- DBをテストに変更
\c test

BEGIN;
CREATE SCHEMA IF NOT EXISTS test_schema; 
CREATE TABLE IF NOT EXISTS test_schema.user_infomation( 
    id varchar (5) not null
    , name varchar (10) not null
    , gender numeric (1) not null
    , hometown varchar (50)
    , PRIMARY KEY (id)
); 
COMMENT ON TABLE test_schema.user_infomation IS 'ユーザー情報テーブル'; 
COMMENT ON COLUMN test_schema.user_infomation.id IS 'ID'; 
COMMENT ON COLUMN test_schema.user_infomation.name IS '名前'; 
COMMENT ON COLUMN test_schema.user_infomation.gender IS '性別'; 
COMMENT ON COLUMN test_schema.user_infomation.hometown IS '出身地';
COMMIT;