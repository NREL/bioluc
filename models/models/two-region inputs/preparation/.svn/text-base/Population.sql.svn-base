set search_path to luc, public, pg_catalog;


create or replace view "Population" as
  select
      case when "Country" like '%World%' then 'World' else "Country" end as "Region"
    , "Year" as "Year"
    , sum("Population [capita]") as "Population [capita]"
    from "Raw Population"
    where "Variant" = 'PopSTAT'
    group by "Country", "Year"
  union all
  select
      'Rest of World' as "Region"
    , "Year" as "Year"
    , sum("Population [capita]" * case when "Country" like '%World%' then 1 else -1 end) as "Population [capita]"
    from "Raw Population"
    where "Variant" = 'PopSTAT'
    group by "Year"
;
