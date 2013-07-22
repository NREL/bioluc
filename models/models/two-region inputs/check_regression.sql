set search_path to luc, public, pg_catalog;


create or replace view check_regression as
  select
      "Run"
    , "Region"
    , "Variable Name"
    , "Subscript 1"
    , "Year"
    , "Actual"
    , sum("Coefficient" * "GDP"^"Power") as "Fit"
    from (
      select
          "Run"
        , substr("Variable Name", 1, 3) as "Region"
        , "Variable Name"
        , "Subscript 1"
        , "Index Value" as "Year"
        , "Value" as "Actual"
        from inputs
        where "Variable Name" like '%_scenario'
           or "Variable Name" like '%_Scenario'
    ) scenarios
    natural join (
      select
          "Run"
        , substr("Variable Name", 1, 3) as "Region"
        , "Index Value" as "Year"
        , "Value" as "GDP"
        from inputs
        where "Variable Name" like '%%%.GDP_per_capita_DATA'
    ) gdps
    natural join (
      select
          "Run"
        , substring("Variable Name", 1, 3) as "Region"
        , substring("Variable Name", 1, 4) || case
            when substring("Variable Name", 5, length("Variable Name") - 4 - length("Suffix")) = 'per_capita_animal_product_demand' then 'per_capita_animal_product_demand_scenario'
            when substring("Variable Name", 5, length("Variable Name") - 4 - length("Suffix")) = 'per_capita_commodity_crop_demand_GDP' then 'per_capita_commodity_crop_demand_scenario'
            when substring("Variable Name", 5, length("Variable Name") - 4 - length("Suffix")) = 'per_capita_Fiber_demand_GDP' then 'per_capita_Fiber_demand_scenario'
            when substring("Variable Name", 5, length("Variable Name") - 4 - length("Suffix")) = 'Per_Capita_VFN_GDP' then 'Per_capita_VFN_demand_Scenario'
            when substring("Variable Name", 5, length("Variable Name") - 4 - length("Suffix")) = 'Per_Capita_''Other''_demand_GDP_relationship' then 'Per_Capita_''Other''_demand_GDP_scenario'
          end as "Variable Name"
        , "Subscript 1"
        , "Value" as "Coefficient"
        , "Power"
        from inputs
        cross join (
          select '_intercept' :: varchar(20) as "Suffix", 0 as "Power"
            union all
            select '_slope', 1
            union all
            select '_square', 2
            union all
            select '_cube', 3
            union all
            select '_intercepts', 0
            union all
            select '_slopes', 1
            union all
            select '_squares', 2
            union all
            select '_cubes', 3
        ) suffixes
        where "Variable Name" like '%' || "Suffix"
    ) coefficients
    group by "Run", "Region", "Variable Name", "Subscript 1", "Year", "Actual"
order by 1, 2, 3, 4, 5
;
