INSERT 
INTO test_schema.user_infomation( 
    id                                          -- ID
    , name                                      -- ���O
    , gender                                    -- ����
    , hometown                                  -- �o�g�n
) 
VALUES ( 
    '1'                                         -- ID
    , 'Tarou'                                   -- ���O
    , 1                                         -- ����
    , '����'                                    -- �o�g�n
) 
ON CONFLICT(id) 
DO UPDATE 
SET
    id = 1                                      -- ID
    , name = 'Hanako'                           -- ���O
    , gender = 2                                -- ����
    , hometown = '���'                         -- �o�g�n
