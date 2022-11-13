-- エンコードを確認
-- select current_setting('client_encoding');
-- testデータベースに接続
\c test

-- 権限削除
REVOKE ALL ON ALL TABLES IN SCHEMA test_schema FROM testuser;
-- ユーザ削除
DROP USER testuser;

-- TABLE 削除
DROP TABLE test_schema.user_infomation;

-- スキーマ削除
Drop SCHEMA test_schema;

-- DB削除
DROP DATABASE test;