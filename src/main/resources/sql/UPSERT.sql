INSERT 
INTO test_schema.user_infomation( 
    id                                          -- ID
    , name                                      -- 名前
    , gender                                    -- 性別
    , hometown                                  -- 出身地
) 
VALUES ( 
    '1'                                         -- ID
    , 'Tarou'                                   -- 名前
    , 1                                         -- 性別
    , '東京'                                    -- 出身地
) 
ON CONFLICT(id) 
DO UPDATE 
SET
    id = 1                                      -- ID
    , name = 'Hanako'                           -- 名前
    , gender = 2                                -- 性別
    , hometown = '大阪'                         -- 出身地
