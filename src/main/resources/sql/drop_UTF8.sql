-- エンコードを確認
-- select current_setting('client_encoding');

-- 変更
set client_encoding to 'utf8';

-- ユーザ削除
DROP USER testuser;

-- DB削除
DROP DATABASE test;

-- TABLE 削除
DROP TABLE test_schema.user_infomation;

-- スキーマ削除
Drop SCHEMA test_schema;