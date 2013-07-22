set search_path to luc, public, pg_catalog;


create or replace view "Products Production" as
  select
      case when "countries" like '%World%' then 'World' else "countries" end as "Region"
    , "Crop element name" as "Crop Element"
    , "year" as "Year"
    , sum("Production (1000 tonnes)") as "Production [Gg/yr]"
    from "Raw Food Balance Sheets"
    inner join "Item Correspondence"
      on "itemscode" = "Food Balance Sheet Item"
    inner join "Raw Crop Categories"
      on "Production Item" = "FAO crop item code"
    group by "countries", "Crop Element No", "Crop element name", "year"
  union all
  select
      'Rest of World' as "Region"
    , "Crop element name" as "Crop Element"
    , "year" as "Year"
    , sum("Production (1000 tonnes)" * case when "countries" like '%World%' then 1 else -1 end) as "Production [Gg/yr]"
    from "Raw Food Balance Sheets"
    inner join "Item Correspondence"
      on "itemscode" = "Food Balance Sheet Item"
    inner join "Raw Crop Categories"
      on "Production Item" = "FAO crop item code"
    group by "Crop Element No", "Crop element name", "year"
;
