set search_path to luc, public, pg_catalog;


create view "Area Harvested" as
  select
      case when "countries" like '%World%' then 'World' else "countries" end as "Region"
    , "Crop element name" as "Crop Element"
    , "year" as "Year"
    , sum("value") as "Area Harvested [Ha]"
    from "Raw Production - Crops"
    inner join "Raw Crop Categories"
      on "item codes" = "FAO crop item code"
    where "element" = 'Area Harvested (Ha)'
    group by "countries", "Crop Element No", "Crop element name", "year"
  union all
  select
      'Rest of World' as "Region"
    , "Crop element name" as "Crop Element"
    , "year" as "Year"
    , sum("value" * case when "countries" like '%World%' then 1 else -1 end) as "Area Harvested [Ha]"
    from "Raw Production - Crops"
    inner join "Raw Crop Categories"
      on "item codes" = "FAO crop item code"
    where "element" = 'Area Harvested (Ha)'
    group by "Crop Element No", "Crop element name", "year"
;
