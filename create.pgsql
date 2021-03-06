DROP TABLE IF EXISTS extracts;

CREATE TABLE extracts (

    -- Hard-to-guess string for public link us.
    id              VARCHAR(64) PRIMARY KEY,
    "name"          TEXT NULL,
    
    -- Information for pre-extract request.
    envelope_id     VARCHAR(64) NOT NULL,
    envelope_bbox   FLOAT[],
    
    -- ODES service identifier for extract.
    odes_id         TEXT NULL,

    -- Who and when.
    user_id         INTEGER NULL,
    created         TIMESTAMP WITH TIME ZONE NOT NULL,
    
    -- Where does this extract cover?
    wof_name        TEXT NULL,
    wof_id          INTEGER NULL

);
