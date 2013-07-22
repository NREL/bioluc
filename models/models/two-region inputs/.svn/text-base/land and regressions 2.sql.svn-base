set search_path to luc, public, pg_catalog;


insert
  into variables
  select "Revision", 'R1.Per_Capita_Fiber_VFN_GDP_square', "Subscript 1", "Subscript 2", "Units", "Definition", "Type", "Source", "Notes", "Comment", "Other"
    from variables
    where "Variable Name" like 'R1.Per_Capita_Fiber_VFN_GDP_slope'
;

insert
  into variables
  select "Revision", 'R1.Per_Capita_Fiber_VFN_GDP_cube', "Subscript 1", "Subscript 2", "Units", "Definition", "Type", "Source", "Notes", "Comment", "Other"
    from variables
    where "Variable Name" like 'R1.Per_Capita_Fiber_VFN_GDP_slope'
;

insert
  into inputs
  select "Revision", "Run", 'R1.Per_Capita_Fiber_VFN_GDP_slope', "Subscript 1", "Subscript 2", 0, -999, null :: real
    from constants
    natural join runs
    where "Variable Name" = 'R1.Per_Capita_Fiber_VFN_GDP_slope'
  union all
  select "Revision", "Run", 'R1.Per_Capita_Fiber_VFN_GDP_intercept', "Subscript 1", "Subscript 2", 0, -999, null
    from constants
    natural join runs
    where "Variable Name" = 'R1.Per_Capita_Fiber_VFN_GDP_slope'
  union all
  select "Revision", "Run", 'R1.Per_Capita_Fiber_VFN_GDP_square', "Subscript 1", "Subscript 2", 0, -999, null
    from constants
    natural join runs
    where "Variable Name" = 'R1.Per_Capita_Fiber_VFN_GDP_slope'
  union all
  select "Revision", "Run", 'R1.Per_Capita_Fiber_VFN_GDP_cube', "Subscript 1", "Subscript 2", 0, -999, null
    from constants
    natural join runs
    where "Variable Name" = 'R1.Per_Capita_Fiber_VFN_GDP_slope'
;



update inputs set "Value" = 1.14E-5 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_intercepts' and "Subscript 1" = 'Maize' and "Run" = 3;
update inputs set "Value" = 1.07E-9 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_slopes' and "Subscript 1" = 'Maize' and "Run" = 3;
update inputs set "Value" = 0 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_squares' and "Subscript 1" = 'Maize' and "Run" = 3;
update inputs set "Value" = 0 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_cubes' and "Subscript 1" = 'Maize' and "Run" = 3;
update inputs set "Value" = 4.90E-5 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_intercepts' and "Subscript 1" = 'Wheat' and "Run" = 3;
update inputs set "Value" = 1.18E-8 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_slopes' and "Subscript 1" = 'Wheat' and "Run" = 3;
update inputs set "Value" = -2.33E-12 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_squares' and "Subscript 1" = 'Wheat' and "Run" = 3;
update inputs set "Value" = 1.32E-16 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_cubes' and "Subscript 1" = 'Wheat' and "Run" = 3;
update inputs set "Value" = 4.15E-5 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_intercepts' and "Subscript 1" = 'Rice' and "Run" = 3;
update inputs set "Value" = 1.18E-8 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_slopes' and "Subscript 1" = 'Rice' and "Run" = 3;
update inputs set "Value" = -3.11E-12 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_squares' and "Subscript 1" = 'Rice' and "Run" = 3;
update inputs set "Value" = 2.50E-16 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_cubes' and "Subscript 1" = 'Rice' and "Run" = 3;
update inputs set "Value" = 3.49E-5 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_intercepts' and "Subscript 1" = 'CerealsGrainNEC' and "Run" = 3;
update inputs set "Value" = -9.52E-9 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_slopes' and "Subscript 1" = 'CerealsGrainNEC' and "Run" = 3;
update inputs set "Value" = 1.53-12 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_squares' and "Subscript 1" = 'CerealsGrainNEC' and "Run" = 3;
update inputs set "Value" = -7.41E-16 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_cubes' and "Subscript 1" = 'CerealsGrainNEC' and "Run" = 3;
update inputs set "Value" = 6.17E-5 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_intercepts' and "Subscript 1" = 'OilCrop' and "Run" = 3;
update inputs set "Value" = -1.03E-9 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_slopes' and "Subscript 1" = 'OilCrop' and "Run" = 3;
update inputs set "Value" = 5.45-13 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_squares' and "Subscript 1" = 'OilCrop' and "Run" = 3;
update inputs set "Value" = -5.46E-16 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_cubes' and "Subscript 1" = 'OilCrop' and "Run" = 3;
update inputs set "Value" = 2.98E-6 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_intercepts' and "Subscript 1" = 'Sugar' and "Run" = 3;
update inputs set "Value" = 5.65E-10 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_slopes' and "Subscript 1" = 'Sugar' and "Run" = 3;
update inputs set "Value" = 0 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_squares' and "Subscript 1" = 'Sugar' and "Run" = 3;
update inputs set "Value" = 0 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_cubes' and "Subscript 1" = 'Sugar' and "Run" = 3;
update inputs set "Value" = 9.31E-6 where "Variable Name" = 'R1.per_capita_Fiber_demand_GDP_intercept' and "Run" = 3;
update inputs set "Value" = 1.02E-9 where "Variable Name" = 'R1.per_capita_Fiber_demand_GDP_slope' and "Run" = 3;
update inputs set "Value" = -5.29-13 where "Variable Name" = 'R1.per_capita_Fiber_demand_GDP_square' and "Run" = 3;
update inputs set "Value" = 6.50E-17 where "Variable Name" = 'R1.per_capita_Fiber_demand_GDP_cube' and "Run" = 3;
update inputs set "Value" = 7.17E-6 where "Variable Name" = 'R1.Per_Capita_''Other''_demand_GDP_relationship_intercept' and "Run" = 3;
update inputs set "Value" = -7.06E-10 where "Variable Name" = 'R1.Per_Capita_''Other''_demand_GDP_relationship_slope' and "Run" = 3;
update inputs set "Value" = 4.25-13 where "Variable Name" = 'R1.Per_Capita_''Other''_demand_GDP_relationship_square' and "Run" = 3;
update inputs set "Value" = -4.07E-17 where "Variable Name" = 'R1.Per_Capita_''Other''_demand_GDP_relationship_cube' and "Run" = 3;
update inputs set "Value" = 3.10E-4 where "Variable Name" = 'R1.Per_Capita_Fiber_VFN_GDP_intercept' and "Run" = 3;
update inputs set "Value" = -4.56E-8 where "Variable Name" = 'R1.Per_Capita_Fiber_VFN_GDP_slope' and "Run" = 3;
update inputs set "Value" = 1.63-11 where "Variable Name" = 'R1.Per_Capita_Fiber_VFN_GDP_square' and "Run" = 3;
update inputs set "Value" = -1.29E-15 where "Variable Name" = 'R1.Per_Capita_Fiber_VFN_GDP_cube' and "Run" = 3;
update inputs set "Value" = 7.24E-6 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_intercepts' and "Subscript 1" = 'Maize' and "Run" = 2;
update inputs set "Value" = -1.19E-10 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_slopes' and "Subscript 1" = 'Maize' and "Run" = 2;
update inputs set "Value" = 2.55E-14 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_squares' and "Subscript 1" = 'Maize' and "Run" = 2;
update inputs set "Value" = -4.70E-19 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_cubes' and "Subscript 1" = 'Maize' and "Run" = 2;
update inputs set "Value" = 6.87E-5 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_intercepts' and "Subscript 1" = 'Wheat' and "Run" = 2;
update inputs set "Value" = -5.54E-8 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_slopes' and "Subscript 1" = 'Wheat' and "Run" = 2;
update inputs set "Value" = 7.89E-14 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_squares' and "Subscript 1" = 'Wheat' and "Run" = 2;
update inputs set "Value" = -1.37E-18 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_cubes' and "Subscript 1" = 'Wheat' and "Run" = 2;
update inputs set "Value" = 3.17E-6 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_intercepts' and "Subscript 1" = 'Rice' and "Run" = 2;
update inputs set "Value" = -1.50E-10 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_slopes' and "Subscript 1" = 'Rice' and "Run" = 2;
update inputs set "Value" = 2.08E-14 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_squares' and "Subscript 1" = 'Rice' and "Run" = 2;
update inputs set "Value" = -3.40E-19 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_cubes' and "Subscript 1" = 'Rice' and "Run" = 2;
update inputs set "Value" = 1.34E-5 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_intercepts' and "Subscript 1" = 'CerealsGrainNEC' and "Run" = 2;
update inputs set "Value" = -4.90E-10 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_slopes' and "Subscript 1" = 'CerealsGrainNEC' and "Run" = 2;
update inputs set "Value" = 8.11-15 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_squares' and "Subscript 1" = 'CerealsGrainNEC' and "Run" = 2;
update inputs set "Value" = 0 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_cubes' and "Subscript 1" = 'CerealsGrainNEC' and "Run" = 2;
update inputs set "Value" = 4.53E-6 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_intercepts' and "Subscript 1" = 'OilCrop' and "Run" = 2;
update inputs set "Value" = 2.52E-9 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_slopes' and "Subscript 1" = 'OilCrop' and "Run" = 2;
update inputs set "Value" = 0 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_squares' and "Subscript 1" = 'OilCrop' and "Run" = 2;
update inputs set "Value" = 0 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_cubes' and "Subscript 1" = 'OilCrop' and "Run" = 2;
update inputs set "Value" = 6.92E-6 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_intercepts' and "Subscript 1" = 'Sugar' and "Run" = 2;
update inputs set "Value" = 8.77E-10 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_slopes' and "Subscript 1" = 'Sugar' and "Run" = 2;
update inputs set "Value" = 0 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_squares' and "Subscript 1" = 'Sugar' and "Run" = 2;
update inputs set "Value" = 0 where "Variable Name" = 'R1.per_capita_commodity_crop_demand_GDP_cubes' and "Subscript 1" = 'Sugar' and "Run" = 2;
update inputs set "Value" = 4.34E-5 where "Variable Name" = 'R1.per_capita_Fiber_demand_GDP_intercept' and "Run" = 2;
update inputs set "Value" = -2.30E-9 where "Variable Name" = 'R1.per_capita_Fiber_demand_GDP_slope' and "Run" = 2;
update inputs set "Value" = 1.15-13 where "Variable Name" = 'R1.per_capita_Fiber_demand_GDP_square' and "Run" = 2;
update inputs set "Value" = -1.52E-18 where "Variable Name" = 'R1.per_capita_Fiber_demand_GDP_cube' and "Run" = 2;
update inputs set "Value" = 5.23E-6 where "Variable Name" = 'R1.Per_Capita_''Other''_demand_GDP_relationship_intercept' and "Run" = 2;
update inputs set "Value" = -5.62E-11 where "Variable Name" = 'R1.Per_Capita_''Other''_demand_GDP_relationship_slope' and "Run" = 2;
update inputs set "Value" = 0 where "Variable Name" = 'R1.Per_Capita_''Other''_demand_GDP_relationship_square' and "Run" = 2;
update inputs set "Value" = 0 where "Variable Name" = 'R1.Per_Capita_''Other''_demand_GDP_relationship_cube' and "Run" = 2;
update inputs set "Value" = 2.60E-4 where "Variable Name" = 'R1.Per_Capita_Fiber_VFN_GDP_intercept' and "Run" = 2;
update inputs set "Value" = 4.38E-9 where "Variable Name" = 'R1.Per_Capita_Fiber_VFN_GDP_slope' and "Run" = 2;
update inputs set "Value" = -7.98E-14 where "Variable Name" = 'R1.Per_Capita_Fiber_VFN_GDP_square' and "Run" = 2;
update inputs set "Value" = 0 where "Variable Name" = 'R1.Per_Capita_Fiber_VFN_GDP_cube' and "Run" = 2;

