set search_path to luc, public, pg_catalog;


create temporary table this_revision as
  select 654 as "Revision", 1 as "Run", 'World' as "Region"
  union all
  select 654, 2, 'United States of America'
  union all
  select 654, 3, 'Rest of World'
;


delete
  from inputs
    where substring("Variable Name", 4) in (
      'per_capita_animal_product_demand_scenario'
    , 'per_capita_commodity_crop_demand_scenario'
    , 'per_capita_Fiber_demand_scenario'
    , 'Per__capita_VFN_demand_Scenario'

    , 'population_scenario'

    , 'commodity_prod''n_data'

    , 'commodity_area_harvested_data'
    , 'VFN_area_harvested_data'
    , 'Fiber_area_harvested_data'
    , 'Forage_area_harvested_data'
    , 'Other_area_harvested_data'
    , 'Per_Capita_''Other''_demand_GDP_scenario'

    , 'potential_commodity_crop_yield'
    , 'Potential_VFN_yield'
    , 'Potential_other_yield'
    , 'potential_fiber_yield'
    --'potential_pasture_land_yield'
    , 'potential_crop_land_forage_yield'
   )
;


insert
  into inputs
  select
      "Revision"
    , "Run"
    , 'R1.' || "Variable"
    , coalesce("Subscript 1", '')
    , coalesce("Subscript 2", '')
    , "Year" - 1960
    , "Value"
    , "Year"
    from this_revision
    natural join "STELLA Inputs"
    where "Variable" in (
      'per_capita_animal_product_demand_scenario'
    , 'per_capita_commodity_crop_demand_scenario'
    , 'per_capita_Fiber_demand_scenario'
    , 'Per__capita_VFN_demand_Scenario'

    , 'population_scenario'

    , 'commodity_prod''n_data'

    , 'commodity_area_harvested_data'
    , 'VFN_area_harvested_data'
    , 'Fiber_area_harvested_data'
    , 'Forage_area_harvested_data'
    , 'Other_area_harvested_data'
    , 'Per_Capita_''Other''_demand_GDP_scenario'

    , 'potential_commodity_crop_yield'
    , 'Potential_VFN_yield'
    , 'Potential_other_yield'
    , 'potential_fiber_yield'
    --'potential_pasture_land_yield'
    , 'potential_crop_land_forage_yield'
   )
;


insert
  into inputs
  select "Revision", "Run", "Variable Name", "Subscript 1", "Subscript 2", 0, "Constant Value", 0
    from this_revision
    natural join constants
    where "Variable Name" in (
      'R1.kg_commodity_per_kg_finished_product'
    , 'R1.KG_forage_per_KG_finished_product'
--  , 'R1.KG_pasture_per_KG_finished_product'
    ) or
    "Variable Name" like 'R1.INIT%'
;


drop table this_revision
;


select "Region", sum("Area Harvested [Ha]") / 1000
  from "Area Harvested"
  where "Year" = 1961
  group by "Region"


update inputs set "Value" = 42741300 where "Run" = 2 and "Variable Name" = 'R1.INIT_Avail_Land' and "Subscript 1" = 'Grass';
update inputs set "Value" = 18317700 where "Run" = 2 and "Variable Name" = 'R1.INIT_Avail_Land' and "Subscript 1" = 'Forest';
update inputs set "Value" = 185500000 where "Run" = 2 and "Variable Name" = 'R1.INIT_Pasture_Land' and "Subscript 1" = 'Grass';
update inputs set "Value" = 79500000 where "Run" = 2 and "Variable Name" = 'R1.INIT_Pasture_Land' and "Subscript 1" = 'Forest';
update inputs set "Value" = 83699700 where "Run" = 2 and "Variable Name" = 'R1.INIT_Crop_Land' and "Subscript 1" = 'Grass';
update inputs set "Value" = 35871300 where "Run" = 2 and "Variable Name" = 'R1.INIT_Crop_Land' and "Subscript 1" = 'Forest';
update inputs set "Value" = 150559500 where "Run" = 1 and "Variable Name" = 'R1.INIT_Avail_Land' and "Subscript 1" = 'Grass';
update inputs set "Value" = 64525500 where "Run" = 1 and "Variable Name" = 'R1.INIT_Avail_Land' and "Subscript 1" = 'Forest';
update inputs set "Value" = 2160833500 where "Run" = 1 and "Variable Name" = 'R1.INIT_Pasture_Land' and "Subscript 1" = 'Grass';
update inputs set "Value" = 926071500 where "Run" = 1 and "Variable Name" = 'R1.INIT_Pasture_Land' and "Subscript 1" = 'Forest';
update inputs set "Value" = 744525600 where "Run" = 1 and "Variable Name" = 'R1.INIT_Crop_Land' and "Subscript 1" = 'Grass';
update inputs set "Value" = 319082400 where "Run" = 1 and "Variable Name" = 'R1.INIT_Crop_Land' and "Subscript 1" = 'Forest';
update inputs set "Value" = 107818200 where "Run" = 3 and "Variable Name" = 'R1.INIT_Avail_Land' and "Subscript 1" = 'Grass';
update inputs set "Value" = 46207800 where "Run" = 3 and "Variable Name" = 'R1.INIT_Avail_Land' and "Subscript 1" = 'Forest';
update inputs set "Value" = 1975333500 where "Run" = 3 and "Variable Name" = 'R1.INIT_Pasture_Land' and "Subscript 1" = 'Grass';
update inputs set "Value" = 846571500 where "Run" = 3 and "Variable Name" = 'R1.INIT_Pasture_Land' and "Subscript 1" = 'Forest';
update inputs set "Value" = 660825900 where "Run" = 3 and "Variable Name" = 'R1.INIT_Crop_Land' and "Subscript 1" = 'Grass';
update inputs set "Value" = 283211100 where "Run" = 3 and "Variable Name" = 'R1.INIT_Crop_Land' and "Subscript 1" = 'Forest';


select "Variable Name", min("Index"), max("Index"), min("Index Value"), max("Index Value")
  from inputs
  group by "Variable Name"
  order by 1;
  