set search_path to luc, public, pg_catalog;


create or replace view "STELLA Inputs" as
  select 
      "Region"
    , 'commodity_area_harvested_data' as "Variable"
    , "Index" as "Subscript 1"
    , '' as "Subscript 2"
    , "Year"
    , "Area Harvested [Ha]" as "Value"
    , 'Ha' as "Units"
    , "Sequence" as "Sort Order"
    from "Area Harvested"
    inner join "STELLA Arrays"
      on "Crop Element" = "Other Name"
  union all
  select 
      "Region"
    , 'VFN_area_harvested_data'
    , ''
    , ''
    , "Year"
    , "Area Harvested [Ha]"
    , 'Ha'
    , 1
    from "Area Harvested"
    where "Crop Element" = 'Vegetables, fruit, nuts'
  union all
  select 
      "Region"
    , 'Fiber_area_harvested_data'
    , ''
    , ''
    , "Year"
    , "Area Harvested [Ha]"
    , 'Ha'
    , 1
    from "Area Harvested"
    where "Crop Element" = 'Plant-based fibres'
  union all
  select 
      "Region"
    , 'Forage_area_harvested_data'
    , ''
    , ''
    , "Year"
    , "Area Harvested [Ha]"
    , 'Ha'
    , 1
    from "Area Harvested"
    where "Crop Element" = 'Forage crop'
  union all
  select 
      "Region"
    , 'Other_area_harvested_data'
    , ''
    , ''
    , "Year"
    , "Area Harvested [Ha]"
    , 'Ha'
    , 1
    from "Area Harvested"
    where "Crop Element" = 'Crops n.e.c.'
  union all
  select 
      "Region"
    , 'commodity_prod''n_data'
    , "Index"
    , ''
    , "Year"
    , "Production [Gg/yr]"
    , 'Gg/yr'
    , "Sequence"
    from "Crop Production"
    inner join "STELLA Arrays"
      on "Crop Element" = "Other Name"
  union all
  select 
      "Region"
    , 'population_scenario'
    , ''
    , ''
    , "Year"
    , "Population [capita]"
    , 'capita'
    , 1
    from "Population"
  union all
  select 
      "Region"
    , 'GDP_per_capita_DATA'
    , ''
    , ''
    , "Year"
    , "GDP [2010$]" / "Population [capita]"
    , '2010$/capita'
    , 1
    from "GDP"
    natural join "Population"
  union all
  select 
      "Region"
    , 'per_capita_commodity_crop_demand_scenario'
    , "Index"
    , ''
    , "Year"
    , "Consumption [Gg/yr]" / "Population [capita]"
    , 'Gg/capita/yr'
    , "Sequence"
    from "Crop Consumption for Food"
    inner join "STELLA Arrays"
      on "Crop Element" = "Other Name"
    natural join "Population"
  union all
  select 
      "Region"
    , 'per_capita_animal_product_demand_scenario'
    , "Index"
    , ''
    , "Year"
    , "Consumption [Gg/yr]" / "Population [capita]"
    , 'Gg/capita/yr'
    , "Sequence"
    from "Animal Consumption for Food"
    natural join "STELLA Arrays"
    natural join "Population"
  union all
  select 
      "Region"
    , 'Per__capita_VFN_demand_Scenario'
    , ''
    , ''
    , "Year"
    , "Production [Gg/yr]" / "Population [capita]"
    , 'Gg/capita/yr'
    , 1
    from "Crop Production"
    natural join "Population"
    where "Crop Element" = 'Vegetables, fruit, nuts'
  union all
  select 
      "Region"
    , 'per_capita_Fiber_demand_scenario'
    , ''
    , ''
    , "Year"
    , "Production [Gg/yr]" / "Population [capita]"
    , 'Gg/capita/yr'
    , 1
    from "Crop Production"
    natural join "Population"
    where "Crop Element" = 'Plant-based fibres'
  union all
  select 
      "Region"
    , 'Per_Capita_''Other''_demand_GDP_scenario'
    , ''
    , ''
    , "Year"
    , "Production [Gg/yr]" / "Population [capita]"
    , 'Gg/capita/yr'
    , 1
    from "Crop Production"
    natural join "Population"
    where "Crop Element" = 'Crops n.e.c.'
  union all
  select 
      "Region"
    , 'potential_commodity_crop_yield'
    , "Index"
    , ''
    , "Year"
    , "Yield [Gg/yr/Ha]" as "Value"
    , 'Gg/yr/Ha' as "Units"
    , "Sequence" as "Sort Order"
    from "Yield"
    inner join "STELLA Arrays"
      on "Crop Element" = "Other Name"
  union all
  select 
      "Region"
    , 'Potential_VFN_yield'
    , ''
    , ''
    , "Year"
    , "Yield [Gg/yr/Ha]" as "Value"
    , 'Gg/yr/Ha' as "Units"
    , 1
    from "Yield"
    where "Crop Element" = 'Vegetables, fruit, nuts'
  union all
  select 
      "Region"
    , 'potential_fiber_yield'
    , ''
    , ''
    , "Year"
    , "Yield [Gg/yr/Ha]" as "Value"
    , 'Gg/yr/Ha' as "Units"
    , 1
    from "Yield"
    where "Crop Element" = 'Plant-based fibres'
  union all
  select 
      "Region"
    , 'potential_crop_land_forage_yield'
    , ''
    , ''
    , "Year"
    , "Yield [Gg/yr/Ha]" as "Value"
    , 'Gg/yr/Ha' as "Units"
    , 1
    from "Yield"
    where "Crop Element" = 'Forage crop'
  union all
  select 
      "Region"
    , 'Potential_other_yield'
    , ''
    , ''
    , "Year"
    , "Yield [Gg/yr/Ha]" as "Value"
    , 'Gg/yr/Ha' as "Units"
    , 1
    from "Yield"
    where "Crop Element" = 'Crops n.e.c.'
  order by 1, 2, 8, 5
;


-- select * from luc."STELLA Inputs";
