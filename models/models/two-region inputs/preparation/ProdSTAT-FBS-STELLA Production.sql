set search_path to luc, public, pg_catalog;


create view "ProdSTAT-FBS-STELLA Production" as
  select
      "Raw Production - Crops"."countries" as "Country"
    , "Raw Production - Crops"."year" as "Year"
    , "Crop Element" as "STELLA Item"
    , "Crop Elements"."Crop Element No" as "STELLA Code"
    , "ProdSTAT Item"
    , "ProdSTAT Code"
    , "FBS Item"
    , "FBS Code"
    , "value" as "ProdSTAT Production [Gg/yr]"
    , "Production (1000 tonnes)" * 1000 as "FBS Production [Gg/yr]"
    from "Crop Elements"
    inner join "Raw Crop Categories"
      on "Crop Element" = "Crop element name"
    inner join "ProdSTAT Categories"
      on "FAO crop item code" = "ProdSTAT Code"
    inner join "Item Correspondence"
      on "ProdSTAT Code" = "Production Item"
    inner join "FBS Categories"
      on "FBS Code" = "Food Balance Sheet Item"
    inner join "Raw Production - Crops"
      on "item codes" = "ProdSTAT Code" and element like 'Production%'
    inner join "Raw Food Balance Sheets"
      on "itemscode" = "FBS Code"
      and "Raw Production - Crops"."countries" = "Raw Food Balance Sheets"."countries"
      and "Raw Production - Crops"."year" = "Raw Food Balance Sheets"."year"
  order by 1,2, 4, 6, 8
;