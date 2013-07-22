set search_path to luc, public, pg_catalog;


create table "Raw Population" (
  "Variant"             varchar(30) not null
, "Country"             varchar(30) not null
, "Year"                smallint    not null
, "Population [capita]" real        not null
, constraint "PK Raw Population"
    primary key ("Variant", "Country", "Year")
)
;