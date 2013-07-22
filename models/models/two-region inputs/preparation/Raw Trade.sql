set search_path to luc, public, pg_catalog;


create table "Raw Trade" (
  "countries" varchar(30) not null
, "country codes" smallint not null
, "item"          varchar(50) not null
, "item codes"    smallint    not null
, "element"       varchar(50) not null
, "element codes" smallint    not null
, "year"          smallint    not null
, "value"         real
, constraint "PK Raw Trade"
    primary key ("country codes", "item codes", "element codes", "year")
)
;