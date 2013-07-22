set search_path to luc, public, pg_catalog;


create view "Animal Production" as
  select
      case when "countries" like '%World%' then 'World' else "countries" end as "Region"
    , "Index"
    , "year" as "Year"
    , sum("Production (1000 tonnes)") as "Production [Gg/yr]"
    from "Raw Food Balance Sheets"
    natural join "Animal Correspondence"
    group by "countries", "Index", "year"
  union all
  select
      'Rest of World' as "Region"
    , "Index"
    , "year" as "Year"
    , sum("Production (1000 tonnes)" * case when "countries" like '%World%' then 1 else -1 end) as "Production [Gg/yr]"
    from "Raw Food Balance Sheets"
    natural join "Animal Correspondence"
    group by "Index", "year"
;
