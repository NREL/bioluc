set search_path to luc, public, pg_catalog;


create or replace view "GDP" as
  select
      case when "Country" like '%World%' then 'World' when "Country" = 'United States' then 'United States of America' else "Country" end as "Region"
    , "Year" as "Year"
    , sum("GDP [2010$]") as "GDP [2010$]"
    from "Raw GDP"
    group by "Country", "Year"
  union all
  select
      'Rest of World' as "Region"
    , "Year" as "Year"
    , sum("GDP [2010$]" * case when "Country" like '%World%' then 1 else -1 end) as "GDP [2010$]"
    from "Raw GDP"
    group by "Year"
;
