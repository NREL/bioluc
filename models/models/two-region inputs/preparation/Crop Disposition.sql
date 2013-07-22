set search_path to luc, public, pg_catalog;


create view "Crop Disposition" as
  select
      case when "countries" = 'World +' then 'World' else "countries" end as "Region"
    , "Crop element name" as "Crop Element"
    , "year" as "Year"
    , "Disposition"
    , sum("Quantity [Gg/yr]") as "Quantity [Gg/yr]"
    from (
      select "countries", "year", "itemscode", 'Production' :: varchar(20) as "Disposition", "Production (1000 tonnes)" as "Quantity [Gg/yr]"
        from "Raw Food Balance Sheets"
      union all
      select "countries", "year", "itemscode", 'Net Export', - case when "countries" = 'World +' then 0 else "Import Quantity (1000 tonnes)" end
        from "Raw Food Balance Sheets"
      union all
      select "countries", "year", "itemscode", 'Net Export', case when "countries" = 'World +' then 0 else "Export Quantity (1000 tonnes)" end
        from "Raw Food Balance Sheets"
      union all
      select "countries", "year", "itemscode", 'Feed', "Feed (1000 tonnes)"
        from "Raw Food Balance Sheets"
      union all
      select "countries", "year", "itemscode", 'Seed', "Seed (1000 tonnes)"
        from "Raw Food Balance Sheets"
      union all
      select "countries", "year", "itemscode", 'Processing', "Processing (1000 tonnes)"
        from "Raw Food Balance Sheets"
      union all
      select "countries", "year", "itemscode", 'Other Util', "Other Util (1000 tonnes)"
        from "Raw Food Balance Sheets"
      union all
      select "countries", "year", "itemscode", 'Food', "Food (1000 tonnes)"
        from "Raw Food Balance Sheets"
    ) rfbs
    inner join (
      select distinct "Food Balance Sheet Item", "Crop Element No", "Crop element name"
        from "Item Correspondence"
        inner join "Raw Crop Categories"
      on "Production Item" = "FAO crop item code"
    ) ic
      on "itemscode" = "Food Balance Sheet Item"
    group by "countries", "Crop Element No", "Crop element name", "year", "Disposition"
  union all
  select
      'Rest of World'
    , "Crop element name"
    , "year"
    , "Disposition"
    , sum("Quantity [Gg/yr]" * case when "countries" = 'World +' then 1 else -1 end)
    from (
      select "countries", "year", "itemscode", 'Production' :: varchar(20) as "Disposition", "Production (1000 tonnes)" as "Quantity [Gg/yr]"
        from "Raw Food Balance Sheets"
      union all
      select "countries", "year", "itemscode", 'Net Export', - case when "countries" = 'World +' then 0 else "Import Quantity (1000 tonnes)" end
        from "Raw Food Balance Sheets"
      union all
      select "countries", "year", "itemscode", 'Net Export', case when "countries" = 'World +' then 0 else "Export Quantity (1000 tonnes)" end
        from "Raw Food Balance Sheets"
      union all
      select "countries", "year", "itemscode", 'Feed', "Feed (1000 tonnes)"
        from "Raw Food Balance Sheets"
      union all
      select "countries", "year", "itemscode", 'Seed', "Seed (1000 tonnes)"
        from "Raw Food Balance Sheets"
      union all
      select "countries", "year", "itemscode", 'Processing', "Processing (1000 tonnes)"
        from "Raw Food Balance Sheets"
      union all
      select "countries", "year", "itemscode", 'Other Util', "Other Util (1000 tonnes)"
        from "Raw Food Balance Sheets"
      union all
      select "countries", "year", "itemscode", 'Food', "Food (1000 tonnes)"
        from "Raw Food Balance Sheets"
    ) rfbs
    inner join (
      select distinct "Food Balance Sheet Item", "Crop Element No", "Crop element name"
        from "Item Correspondence"
        inner join "Raw Crop Categories"
      on "Production Item" = "FAO crop item code"
    ) ic
      on "itemscode" = "Food Balance Sheet Item"
    group by "Crop Element No", "Crop element name", "year", "Disposition"
;
