set search_path to luc, public, pg_catalog;


create view "Animal Export" as
  select
      case when "countries" like '%World%' then 'World' else "countries" end as "Region"
    , "Index"
    , "year" as "Year"
    , sum("Export Quantity (1000 tonnes)") - sum("Import Quantity (1000 tonnes)") as "Net Export [Gg/yr]"
    from "Raw Food Balance Sheets"
    natural join "Animal Correspondence"
    where "countries" = 'United States of America'
    group by "countries", "Index", "year"
  order by "Region", "Index", "Year"
;