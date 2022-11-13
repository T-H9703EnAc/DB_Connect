-- �G���R�[�h���m�F
-- select current_setting('client_encoding');

-- �ύX
set client_encoding to 'utf8';
-- ���[�U�쐬
CREATE USER testuser LOGIN PASSWORD 'testuser' CREATEDB;

CREATE DATABASE test;

-- DB���e�X�g�ɕύX
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
COMMENT ON TABLE test_schema.user_infomation IS '���[�U�[���e�[�u��'; 
COMMENT ON COLUMN test_schema.user_infomation.id IS 'ID'; 
COMMENT ON COLUMN test_schema.user_infomation.name IS '���O'; 
COMMENT ON COLUMN test_schema.user_infomation.gender IS '����'; 
COMMENT ON COLUMN test_schema.user_infomation.hometown IS '�o�g�n';
COMMIT;
