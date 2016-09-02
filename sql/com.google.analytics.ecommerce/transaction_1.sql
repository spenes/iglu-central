-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.1.0
-- Generated: 2016-09-02 17:18

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_google_analytics_ecommerce_transaction_1 (
    "schema_vendor"  VARCHAR(128)    ENCODE RUNLENGTH NOT NULL,
    "schema_name"    VARCHAR(128)    ENCODE RUNLENGTH NOT NULL,
    "schema_format"  VARCHAR(128)    ENCODE RUNLENGTH NOT NULL,
    "schema_version" VARCHAR(128)    ENCODE RUNLENGTH NOT NULL,
    "root_id"        CHAR(36)        ENCODE RAW       NOT NULL,
    "root_tstamp"    TIMESTAMP       ENCODE LZO       NOT NULL,
    "ref_root"       VARCHAR(255)    ENCODE RUNLENGTH NOT NULL,
    "ref_tree"       VARCHAR(1500)   ENCODE RUNLENGTH NOT NULL,
    "ref_parent"     VARCHAR(255)    ENCODE RUNLENGTH NOT NULL,
    "affiliation"    VARCHAR(500)    ENCODE LZO,
    "currency"       CHAR(3)         ENCODE LZO,
    "id"             VARCHAR(500)    ENCODE LZO,
    "revenue"        DECIMAL (36, 2) ENCODE LZO,
    "shipping"       DECIMAL (36, 2) ENCODE LZO,
    "tax"            DECIMAL (36, 2) ENCODE LZO,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_google_analytics_ecommerce_transaction_1 IS 'iglu:com.google.analytics.ecommerce/transaction/jsonschema/1-0-0';
