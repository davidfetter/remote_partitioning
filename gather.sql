/* Ground zero! */
CREATE EXTENSION postgres_fdw;

/* Hosts using ssh -fNL exposed_port:localhost:5432 */
CREATE SERVER thread1 FOREIGN DATA WRAPPER postgres_fdw OPTIONS (host 'localhost', port '6431', dbname 'disqus_thread', updatable 'false');
CREATE SERVER thread2 FOREIGN DATA WRAPPER postgres_fdw OPTIONS (host 'localhost', port '6432', dbname 'disqus_thread', updatable 'false');
CREATE SERVER thread3 FOREIGN DATA WRAPPER postgres_fdw OPTIONS (host 'localhost', port '6433', dbname 'disqus_thread', updatable 'false');
CREATE SERVER thread4 FOREIGN DATA WRAPPER postgres_fdw OPTIONS (host 'localhost', port '6434', dbname 'disqus_thread', updatable 'false');

/* User mappings.  Provide user and password, the latter not needed. */
CREATE USER MAPPING FOR public SERVER thread1 OPTIONS (user 'postgres');
CREATE USER MAPPING FOR public SERVER thread2 OPTIONS (user 'postgres');
CREATE USER MAPPING FOR public SERVER thread3 OPTIONS (user 'postgres');
CREATE USER MAPPING FOR public SERVER thread4 OPTIONS (user 'postgres');

/* A schema overall, and once apiece */
CREATE SCHEMA thread;
CREATE SCHEMA thread1;
CREATE SCHEMA thread2;
CREATE SCHEMA thread3;
CREATE SCHEMA thread4;

/* Information_schema.columns on each */
CREATE FOREIGN TABLE thread1.columns (
    table_catalog information_schema.sql_identifier, 
    table_schema information_schema.sql_identifier, 
    table_name information_schema.sql_identifier, 
    column_name information_schema.sql_identifier, 
    ordinal_position information_schema.cardinal_number, 
    column_default information_schema.character_data, 
    is_nullable information_schema.yes_or_no, 
    data_type information_schema.character_data, 
    character_maximum_length information_schema.cardinal_number, 
    character_octet_length information_schema.cardinal_number, 
    numeric_precision information_schema.cardinal_number, 
    numeric_precision_radix information_schema.cardinal_number, 
    numeric_scale information_schema.cardinal_number, 
    datetime_precision information_schema.cardinal_number, 
    interval_type information_schema.character_data, 
    interval_precision information_schema.cardinal_number, 
    character_set_catalog information_schema.sql_identifier, 
    character_set_schema information_schema.sql_identifier, 
    character_set_name information_schema.sql_identifier, 
    collation_catalog information_schema.sql_identifier, 
    collation_schema information_schema.sql_identifier, 
    collation_name information_schema.sql_identifier, 
    domain_catalog information_schema.sql_identifier, 
    domain_schema information_schema.sql_identifier, 
    domain_name information_schema.sql_identifier, 
    udt_catalog information_schema.sql_identifier, 
    udt_schema information_schema.sql_identifier, 
    udt_name information_schema.sql_identifier, 
    scope_catalog information_schema.sql_identifier, 
    scope_schema information_schema.sql_identifier, 
    scope_name information_schema.sql_identifier, 
    maximum_cardinality information_schema.cardinal_number, 
    dtd_identifier information_schema.sql_identifier, 
    is_self_referencing information_schema.yes_or_no, 
    is_identity information_schema.yes_or_no, 
    identity_generation information_schema.character_data, 
    identity_start information_schema.character_data, 
    identity_increment information_schema.character_data, 
    identity_maximum information_schema.character_data, 
    identity_minimum information_schema.character_data, 
    identity_cycle information_schema.yes_or_no, 
    is_generated information_schema.character_data, 
    generation_expression information_schema.character_data, 
    is_updatable information_schema.yes_or_no
)
SERVER thread1
OPTIONS (
    schema_name 'information_schema',
    table_name 'columns'
);

CREATE FOREIGN TABLE thread2.columns (
    table_catalog information_schema.sql_identifier, 
    table_schema information_schema.sql_identifier, 
    table_name information_schema.sql_identifier, 
    column_name information_schema.sql_identifier, 
    ordinal_position information_schema.cardinal_number, 
    column_default information_schema.character_data, 
    is_nullable information_schema.yes_or_no, 
    data_type information_schema.character_data, 
    character_maximum_length information_schema.cardinal_number, 
    character_octet_length information_schema.cardinal_number, 
    numeric_precision information_schema.cardinal_number, 
    numeric_precision_radix information_schema.cardinal_number, 
    numeric_scale information_schema.cardinal_number, 
    datetime_precision information_schema.cardinal_number, 
    interval_type information_schema.character_data, 
    interval_precision information_schema.cardinal_number, 
    character_set_catalog information_schema.sql_identifier, 
    character_set_schema information_schema.sql_identifier, 
    character_set_name information_schema.sql_identifier, 
    collation_catalog information_schema.sql_identifier, 
    collation_schema information_schema.sql_identifier, 
    collation_name information_schema.sql_identifier, 
    domain_catalog information_schema.sql_identifier, 
    domain_schema information_schema.sql_identifier, 
    domain_name information_schema.sql_identifier, 
    udt_catalog information_schema.sql_identifier, 
    udt_schema information_schema.sql_identifier, 
    udt_name information_schema.sql_identifier, 
    scope_catalog information_schema.sql_identifier, 
    scope_schema information_schema.sql_identifier, 
    scope_name information_schema.sql_identifier, 
    maximum_cardinality information_schema.cardinal_number, 
    dtd_identifier information_schema.sql_identifier, 
    is_self_referencing information_schema.yes_or_no, 
    is_identity information_schema.yes_or_no, 
    identity_generation information_schema.character_data, 
    identity_start information_schema.character_data, 
    identity_increment information_schema.character_data, 
    identity_maximum information_schema.character_data, 
    identity_minimum information_schema.character_data, 
    identity_cycle information_schema.yes_or_no, 
    is_generated information_schema.character_data, 
    generation_expression information_schema.character_data, 
    is_updatable information_schema.yes_or_no
)
SERVER thread2
OPTIONS (
    schema_name 'information_schema',
    table_name 'columns'
);

CREATE FOREIGN TABLE thread3.columns (
    table_catalog information_schema.sql_identifier, 
    table_schema information_schema.sql_identifier, 
    table_name information_schema.sql_identifier, 
    column_name information_schema.sql_identifier, 
    ordinal_position information_schema.cardinal_number, 
    column_default information_schema.character_data, 
    is_nullable information_schema.yes_or_no, 
    data_type information_schema.character_data, 
    character_maximum_length information_schema.cardinal_number, 
    character_octet_length information_schema.cardinal_number, 
    numeric_precision information_schema.cardinal_number, 
    numeric_precision_radix information_schema.cardinal_number, 
    numeric_scale information_schema.cardinal_number, 
    datetime_precision information_schema.cardinal_number, 
    interval_type information_schema.character_data, 
    interval_precision information_schema.cardinal_number, 
    character_set_catalog information_schema.sql_identifier, 
    character_set_schema information_schema.sql_identifier, 
    character_set_name information_schema.sql_identifier, 
    collation_catalog information_schema.sql_identifier, 
    collation_schema information_schema.sql_identifier, 
    collation_name information_schema.sql_identifier, 
    domain_catalog information_schema.sql_identifier, 
    domain_schema information_schema.sql_identifier, 
    domain_name information_schema.sql_identifier, 
    udt_catalog information_schema.sql_identifier, 
    udt_schema information_schema.sql_identifier, 
    udt_name information_schema.sql_identifier, 
    scope_catalog information_schema.sql_identifier, 
    scope_schema information_schema.sql_identifier, 
    scope_name information_schema.sql_identifier, 
    maximum_cardinality information_schema.cardinal_number, 
    dtd_identifier information_schema.sql_identifier, 
    is_self_referencing information_schema.yes_or_no, 
    is_identity information_schema.yes_or_no, 
    identity_generation information_schema.character_data, 
    identity_start information_schema.character_data, 
    identity_increment information_schema.character_data, 
    identity_maximum information_schema.character_data, 
    identity_minimum information_schema.character_data, 
    identity_cycle information_schema.yes_or_no, 
    is_generated information_schema.character_data, 
    generation_expression information_schema.character_data, 
    is_updatable information_schema.yes_or_no
)
SERVER thread3
OPTIONS (
    schema_name 'information_schema',
    table_name 'columns'
);

CREATE FOREIGN TABLE thread4.columns (
    table_catalog information_schema.sql_identifier, 
    table_schema information_schema.sql_identifier, 
    table_name information_schema.sql_identifier, 
    column_name information_schema.sql_identifier, 
    ordinal_position information_schema.cardinal_number, 
    column_default information_schema.character_data, 
    is_nullable information_schema.yes_or_no, 
    data_type information_schema.character_data, 
    character_maximum_length information_schema.cardinal_number, 
    character_octet_length information_schema.cardinal_number, 
    numeric_precision information_schema.cardinal_number, 
    numeric_precision_radix information_schema.cardinal_number, 
    numeric_scale information_schema.cardinal_number, 
    datetime_precision information_schema.cardinal_number, 
    interval_type information_schema.character_data, 
    interval_precision information_schema.cardinal_number, 
    character_set_catalog information_schema.sql_identifier, 
    character_set_schema information_schema.sql_identifier, 
    character_set_name information_schema.sql_identifier, 
    collation_catalog information_schema.sql_identifier, 
    collation_schema information_schema.sql_identifier, 
    collation_name information_schema.sql_identifier, 
    domain_catalog information_schema.sql_identifier, 
    domain_schema information_schema.sql_identifier, 
    domain_name information_schema.sql_identifier, 
    udt_catalog information_schema.sql_identifier, 
    udt_schema information_schema.sql_identifier, 
    udt_name information_schema.sql_identifier, 
    scope_catalog information_schema.sql_identifier, 
    scope_schema information_schema.sql_identifier, 
    scope_name information_schema.sql_identifier, 
    maximum_cardinality information_schema.cardinal_number, 
    dtd_identifier information_schema.sql_identifier, 
    is_self_referencing information_schema.yes_or_no, 
    is_identity information_schema.yes_or_no, 
    identity_generation information_schema.character_data, 
    identity_start information_schema.character_data, 
    identity_increment information_schema.character_data, 
    identity_maximum information_schema.character_data, 
    identity_minimum information_schema.character_data, 
    identity_cycle information_schema.yes_or_no, 
    is_generated information_schema.character_data, 
    generation_expression information_schema.character_data, 
    is_updatable information_schema.yes_or_no
)
SERVER thread4
OPTIONS (
    schema_name 'information_schema',
    table_name 'columns'
);

CREATE VIEW thread.columns AS
    SELECT 'thread1' AS "database", * FROM thread1.columns
UNION ALL
    SELECT 'thread2' AS "database", * FROM thread2.columns
UNION ALL
    SELECT 'thread3' AS "database", * FROM thread3.columns
UNION ALL
    SELECT 'thread4' AS "database", * FROM thread4.columns
    ;

CREATE OR REPLACE FUNCTION gen_foreign_table(
    foreign_server TEXT,
    foreign_schema TEXT,
    foreign_tables VARIADIC TEXT[]
)
RETURNS SETOF TEXT
LANGUAGE SQL
AS $$
SELECT
    'CREATE FOREIGN TABLE ' ||
    quote_ident(foreign_server) || '.' || quote_ident(table_name) ||
    E'(\n    ' ||
    string_agg(
        quote_ident(column_name) || ' ' || data_type,
        E',\n    ' ORDER BY ordinal_position
    ) ||
$q$
)
SERVER $q$ || quote_ident(foreign_server) || $q$
OPTIONS (
    schema_name $q$ || quote_literal(foreign_schema) || $q$,
    table_name $q$ || quote_literal(table_name) || $q$
);$q$ AS initial_ddl
FROM thread.columns
WHERE
    database = foreign_server AND
    table_schema = foreign_schema AND
    table_name = ANY(foreign_tables)
GROUP BY table_name;
$$;

/*

WITH t AS (
    SELECT DISTINCT database::text, table_schema::text, array_agg(table_name::text)::text[] AS "tables"
    FROM thread.columns
    WHERE
        table_schema = 'public' AND
        table_name ~ '^discovery_payment'
    GROUP BY database, table_schema
)
SELECT gen_foreign_table(database, table_schema, VARIADIC tables)
FROM t;

*/
