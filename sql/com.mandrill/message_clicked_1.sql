-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.1.0
-- Generated: 2016-09-02 17:18

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_mandrill_message_clicked_1 (
    "schema_vendor"                    VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "schema_name"                      VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "schema_format"                    VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "schema_version"                   VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "root_id"                          CHAR(36)         ENCODE RAW       NOT NULL,
    "root_tstamp"                      TIMESTAMP        ENCODE LZO       NOT NULL,
    "ref_root"                         VARCHAR(255)     ENCODE RUNLENGTH NOT NULL,
    "ref_tree"                         VARCHAR(1500)    ENCODE RUNLENGTH NOT NULL,
    "ref_parent"                       VARCHAR(255)     ENCODE RUNLENGTH NOT NULL,
    "_id"                              VARCHAR(4096)    ENCODE LZO,
    "ip"                               VARCHAR(4096)    ENCODE LZO,
    "location.city"                    VARCHAR(4096)    ENCODE LZO,
    "location.country"                 VARCHAR(4096)    ENCODE LZO,
    "location.country_short"           VARCHAR(4096)    ENCODE LZO,
    "location.latitude"                DOUBLE PRECISION ENCODE RAW,
    "location.longitude"               DOUBLE PRECISION ENCODE RAW,
    "location.postal_code"             VARCHAR(4096)    ENCODE LZO,
    "location.region"                  VARCHAR(4096)    ENCODE LZO,
    "location.timezone"                VARCHAR(4096)    ENCODE LZO,
    "msg._id"                          VARCHAR(4096)    ENCODE LZO,
    "msg._version"                     VARCHAR(4096)    ENCODE LZO,
    "msg.clicks"                       VARCHAR(5000)    ENCODE LZO,
    "msg.email"                        VARCHAR(4096)    ENCODE LZO,
    "msg.metadata.user_id"             DOUBLE PRECISION ENCODE RAW,
    "msg.opens"                        VARCHAR(5000)    ENCODE LZO,
    "msg.resends"                      VARCHAR(5000)    ENCODE LZO,
    "msg.sender"                       VARCHAR(4096)    ENCODE LZO,
    "msg.smtp_events"                  VARCHAR(5000)    ENCODE LZO,
    "msg.state"                        VARCHAR(4096)    ENCODE LZO,
    "msg.subject"                      VARCHAR(4096)    ENCODE LZO,
    "msg.tags"                         VARCHAR(5000)    ENCODE LZO,
    "msg.template"                     VARCHAR(4096)    ENCODE LZO,
    "msg.ts"                           TIMESTAMP        ENCODE LZO,
    "ts"                               TIMESTAMP        ENCODE LZO,
    "url"                              VARCHAR(4096)    ENCODE LZO,
    "user_agent"                       VARCHAR(4096)    ENCODE LZO,
    "user_agent_parsed.mobile"         BOOLEAN          ENCODE RUNLENGTH,
    "user_agent_parsed.os_company"     VARCHAR(4096)    ENCODE LZO,
    "user_agent_parsed.os_company_url" VARCHAR(4096)    ENCODE LZO,
    "user_agent_parsed.os_family"      VARCHAR(4096)    ENCODE LZO,
    "user_agent_parsed.os_icon"        VARCHAR(4096)    ENCODE LZO,
    "user_agent_parsed.os_name"        VARCHAR(4096)    ENCODE LZO,
    "user_agent_parsed.os_url"         VARCHAR(4096)    ENCODE LZO,
    "user_agent_parsed.type"           VARCHAR(4096)    ENCODE LZO,
    "user_agent_parsed.ua_company"     VARCHAR(4096)    ENCODE LZO,
    "user_agent_parsed.ua_company_url" VARCHAR(4096)    ENCODE LZO,
    "user_agent_parsed.ua_family"      VARCHAR(4096)    ENCODE LZO,
    "user_agent_parsed.ua_icon"        VARCHAR(4096)    ENCODE LZO,
    "user_agent_parsed.ua_name"        VARCHAR(4096)    ENCODE LZO,
    "user_agent_parsed.ua_url"         VARCHAR(4096)    ENCODE LZO,
    "user_agent_parsed.ua_version"     VARCHAR(4096)    ENCODE LZO,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_mandrill_message_clicked_1 IS 'iglu:com.mandrill/message_clicked/jsonschema/1-0-0';
