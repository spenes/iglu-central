-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.1.0
-- Generated: 2016-09-02 17:18

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_segment_event_1 (
    "schema_vendor"      VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_name"        VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_format"      VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_version"     VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "root_id"            CHAR(36)      ENCODE RAW       NOT NULL,
    "root_tstamp"        TIMESTAMP     ENCODE LZO       NOT NULL,
    "ref_root"           VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "ref_tree"           VARCHAR(1500) ENCODE RUNLENGTH NOT NULL,
    "ref_parent"         VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "anonymous_id"       CHAR(36)      ENCODE LZO,
    "channel"            VARCHAR(7)    ENCODE LZO,
    "message_id"         VARCHAR(36)   ENCODE LZO,
    "original_timestamp" TIMESTAMP     ENCODE LZO,
    "project_id"         VARCHAR(36)   ENCODE LZO,
    "received_at"        TIMESTAMP     ENCODE LZO,
    "sent_at"            TIMESTAMP     ENCODE LZO,
    "timestamp"          TIMESTAMP     ENCODE LZO,
    "type"               VARCHAR(512)  ENCODE LZO,
    "user_id"            VARCHAR(36)   ENCODE LZO,
    "version"            VARCHAR(128)  ENCODE LZO,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_segment_event_1 IS 'iglu:com.segment/event/jsonschema/1-0-0';
