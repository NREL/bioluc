set search_path to luc, public, pg_catalog;


insert
  into variables
  select "Revision", 'R1.per_capita_animal_product_demand_cubes', "Subscript 1", "Subscript 2", "Units", "Definition", "Type", "Source", "Notes", "Comment", "Other"
    from variables
    where "Variable Name" like 'R1.per_capita_animal_product_demand_slopes'
;

insert
  into inputs
  select "Revision", "Run", 'R1.per_capita_animal_product_demand_slopes', "Subscript 1", "Subscript 2", 0, -999, null :: real
    from constants
    natural join runs
    where "Variable Name" like 'R1.per_capita_animal_product_demand_slopes'
  union all
  select "Revision", "Run", 'R1.per_capita_animal_product_demand_intercepts', "Subscript 1", "Subscript 2", 0, -999, null
    from constants
    natural join runs
    where "Variable Name" like 'R1.per_capita_animal_product_demand_slopes'
  union all
  select "Revision", "Run", 'R1.per_capita_animal_product_demand_squares', "Subscript 1", "Subscript 2", 0, -999, null
    from constants
    natural join runs
    where "Variable Name" like 'R1.per_capita_animal_product_demand_slopes'
  union all
  select "Revision", "Run", 'R1.per_capita_animal_product_demand_cubes', "Subscript 1", "Subscript 2", 0, -999, null
    from constants
    natural join runs
    where "Variable Name" like 'R1.per_capita_animal_product_demand_slopes'
;


update inputs t
  set "Value" = s."Value"
  from inputs s
  where t."Revision" = s."Revision"
    and t."Run" = s."Run"
    and t."Variable Name" = 'R1.INIT_land_allocation'
    and s."Variable Name" = 'R1.commodity_area_harvested_data'
    and t."Subscript 1" = s."Subscript 1"
    and s."Index" = 1



  select "Run", "Variable Name", "Subscript 1", "Value"
    from inputs
    where "Index" = 1
    and "Variable Name" in (
      'R1.commodity_area_harvested_data'
    , 'R1.VFN_area_harvested_data'
    , 'R1.Fiber_area_harvested_data'
    , 'R1.Forage_area_harvested_data'
    , 'R1.Other_area_harvested_data'
    )
;

select * from "STELLA Inputs"