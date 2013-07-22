set search_path to luc, public, pg_catalog;


--create or replace view "Trade" as
  select
      'United States of America' as "Region From"
    , 'Rest of World' as "Region To"
    , "Crop element name" as "Crop Element"
    , "year" as "Year"
    , sum("value" * case when "element" = 'Import Quantity (tonnes)' then -1 when "element" = 'Export Quantity (tonnes)' then +1 else null end) / 1000 as "Trade [Gg/yr]"
    from "Raw Trade"
    inner join "Raw Crop Categories"
      on "item codes" = "FAO crop item code"
    group by "Crop Element No", "Crop element name", "year"
order by 3, 4;
