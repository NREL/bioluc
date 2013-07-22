set search_path to luc, public, pg_catalog;


create or replace view "Crop Production" as
  select
      case when "countries" like '%World%' then 'World' else "countries" end as "Region"
    , "Crop element name" as "Crop Element"
    , "year" as "Year"
    , sum("value") / 1000 as "Production [Gg/yr]"
    from "Raw Production - Crops"
    inner join "Raw Crop Categories"
      on "item codes" = "FAO crop item code"
    where "element" = 'Production (tonnes)'
    group by "countries", "Crop Element No", "Crop element name", "year"
  union all
  select
      'Rest of World' as "Region"
    , "Crop element name" as "Crop Element"
    , "year" as "Year"
    , sum("value" * case when "countries" like '%World%' then 1 else -1 end) / 1000 as "Production [Gg/yr]"
    from "Raw Production - Crops"
    inner join "Raw Crop Categories"
      on "item codes" = "FAO crop item code"
    where "element" = 'Production (tonnes)'
    group by "Crop Element No", "Crop element name", "year"
;
