set search_path to luc, public, pg_catalog;


create or replace view "ProdSTAT-FBS-STELLA Correspondence" as
  select
      "Crop Element" as "STELLA Item"
    , "Crop Elements"."Crop Element No" as "STELLA Code"
    , "ProdSTAT Item"
    , "ProdSTAT Code"
    , "FBS Item"
    , "FBS Code"
    from "Crop Elements"
    inner join "Raw Crop Categories"
      using("Crop Element No")
    inner join "ProdSTAT Categories"
      on "FAO crop item code" = "ProdSTAT Code"
    inner join "Item Correspondence"
      on "ProdSTAT Code" = "Production Item"
    inner join "FBS Categories"
      on "FBS Code" = "Food Balance Sheet Item"
  order by 2, 4, 6
;


select "FBS Item", "FBS Code", count(distinct "STELLA Item")
  from "ProdSTAT-FBS-STELLA Correspondence"
  group by "FBS Item", "FBS Code"
  having count(distinct "STELLA Item") > 1
;
