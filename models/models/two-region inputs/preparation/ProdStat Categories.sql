set search_path to luc, public, pg_catalog;


create view "ProdSTAT Categories" as
  select distinct
      "item" as "ProdSTAT Item"
    , "item codes" as "ProdSTAT Code"
    from "Raw Production - Crops"
;