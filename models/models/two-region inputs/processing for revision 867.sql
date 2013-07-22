set search_path to luc, public, pg_catalog;

begin transaction;

/*
delete
  from inputs
  where "Run" = 8
    and substr("Variable Name", 4) in (
      '.per_capita_commodity_crop_demand_scenario'
    , '.per_capita_Fiber_demand_scenario'
    , '.Per_Capita_''Other''_demand_GDP_scenario'
    , '.Per_capita_VFN_demand_Scenario'
    )
;
insert
  into inputs
  select 867, 8, "Variable Name", "Subscript 1", "Subscript 2", "Index", "Value", "Index Value"
    from inputs
    where "Run" = 7
      and substr("Variable Name", 4) in (
        '.per_capita_commodity_crop_demand_scenario'
      , '.per_capita_Fiber_demand_scenario'
      , '.Per_Capita_''Other''_demand_GDP_scenario'
      , '.Per_capita_VFN_demand_Scenario'
      )
;
*/

delete
  from inputs
  where "Run" = 8
    and substr("Variable Name", 4) in (
      '.potential_commodity_crop_yield'
    , '.potential_crop_land_forage_yield'
    , '.potential_fiber_yield'
    , '.Potential_other_yield'
    , '.Potential_VFN_yield'
    )
;
commit;


select distinct "Variable Name"
  from inputs
  where "Run" = 8
    and substr("Variable Name", 4) in (
      '.potential_commodity_crop_yield'
    , '.potential_crop_land_forage_yield'
    , '.potential_fiber_yield'
    , '.Potential_other_yield'
    , '.Potential_VFN_yield'
    )



select *
  from inputs
  where "Run" = 8