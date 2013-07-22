set search_path to luc, public, pg_catalog;


create view "Countries" as
  select
      "country codes" as "Country Code"
    , "countries" as "Country"
    from "Raw Production - Crops"
  union
  select
      "countries (codes)"
    , "countries"
    from "Raw Food Balance Sheets"
  order by 2
;
