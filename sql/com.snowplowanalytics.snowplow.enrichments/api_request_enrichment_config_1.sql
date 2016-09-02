-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.1.0
-- Generated: 2016-09-02 17:18

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_snowplowanalytics_snowplow_enrichments_api_request_enrichment_config_1 (
    "schema_vendor"                                          VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_name"                                            VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_format"                                          VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_version"                                         VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "root_id"                                                CHAR(36)      ENCODE RAW       NOT NULL,
    "root_tstamp"                                            TIMESTAMP     ENCODE LZO       NOT NULL,
    "ref_root"                                               VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "ref_tree"                                               VARCHAR(1500) ENCODE RUNLENGTH NOT NULL,
    "ref_parent"                                             VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "enabled"                                                BOOLEAN       ENCODE RUNLENGTH NOT NULL,
    "name"                                                   VARCHAR(4096) ENCODE LZO       NOT NULL,
    "parameters.cache.size"                                  BIGINT        ENCODE LZO       NOT NULL,
    "parameters.cache.ttl"                                   INT           ENCODE LZO       NOT NULL,
    "parameters.inputs"                                      VARCHAR(5000) ENCODE LZO       NOT NULL,
    "parameters.outputs"                                     VARCHAR(5000) ENCODE LZO       NOT NULL,
    "vendor"                                                 VARCHAR(4096) ENCODE LZO       NOT NULL,
    "parameters.api.http.authentication.http_basic.password" VARCHAR(4096) ENCODE LZO,
    "parameters.api.http.authentication.http_basic.username" VARCHAR(4096) ENCODE LZO,
    "parameters.api.http.method"                             VARCHAR(4)    ENCODE LZO,
    "parameters.api.http.timeout"                            INT           ENCODE LZO,
    "parameters.api.http.uri"                                VARCHAR(4096) ENCODE LZO,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_snowplowanalytics_snowplow_enrichments_api_request_enrichment_config_1 IS 'iglu:com.snowplowanalytics.snowplow.enrichments/api_request_enrichment_config/jsonschema/1-0-0';
