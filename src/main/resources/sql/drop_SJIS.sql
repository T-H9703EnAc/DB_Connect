-- �G���R�[�h���m�F
-- select current_setting('client_encoding');
-- test�f�[�^�x�[�X�ɐڑ�
\c test

-- �����폜
REVOKE ALL ON ALL TABLES IN SCHEMA test_schema FROM testuser;
-- ���[�U�폜
DROP USER testuser;

-- TABLE �폜
DROP TABLE test_schema.user_infomation;

-- �X�L�[�}�폜
Drop SCHEMA test_schema;

-- DB�폜
DROP DATABASE test;