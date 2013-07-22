set search_path to luc, public, pg_catalog;


insert
  into variables
  select 772, "Region" || '.commodity_distribution_data_Other', "Subscript Element", '', '', '', '', '', '', '', ''
    from (
      select 'USA' as "Region"
      union all
      select 'ROW'
    ) r
    cross join subscripts a
    where a."Revision" = 772
      and a."Subscript Dimension" = 'Disposition'
      

insert
  into arrays
  select 772, "Region" || '.commodity_distribution_data_Fiber', 'Disposition', ''
    from (
      select 'USA' as "Region"
      union all
      select 'ROW'
    ) r
    cross join subscripts a
    cross join subscripts b
    where a."Revision" = 772
      and a."Subscript Dimension" = 'Disposition'
      and b."Revision" = 772
      and b."Subscript Dimension" = 'Commodity'



delete
  from variables
  where "Variable Name" like '%disposition%'
;
      
update variables
  set "Variable Name" = regexp_replace("Variable Name", 'commodity_distribution_data', 'commodity_disposition_data')
  where "Variable Name" like '%commodity_distribution_data%'
;

insert
  into inputs
  select
      772
    , 6
    , case when "Region" = 'United States of America' then 'USA' when "Region" = 'Rest of World' then 'ROW' end || '.commodity_disposition_data'
      || case
        when "Crop Element" = 'Crops n.e.c.' then '_Other'
        when "Crop Element" = 'Vegetables, fruit, nuts' then '_VFN'
        when "Crop Element" = 'Plant-based fibres' then '_Fiber'
        else ''
      end
    , regexp_replace("Disposition", ' ', '')
    , case
        when "Crop Element" = 'Paddy rice' then 'Rice'
        when "Crop Element" = 'Cereals grain n.e.c.' then 'CerealsGrainNEC'
        when "Crop Element" = 'Oil seeds' then 'OilCrop'
        when "Crop Element" = 'Sugar cane, sugar beet' then 'Sugar'
        when "Crop Element" in ('Wheat', 'Maize') then "Crop Element"
        else ''
      end
    , "Year" - 1960
    , coalesce("Quantity [Gg/yr]", 0)
    , "Year"
    from "Crop Disposition"
    where "Region" in ('United States of America', 'Rest of World')
      and "Disposition" <> 'Production'
  order by 1, 2, 3, 4, 6
;

delete
  from inputs
  where "Revision" = 772
    and "Run" = 6
    and "Variable Name" in (
      'ROW.per_capita_commodity_crop_demand_scenario'
    , 'USA.per_capita_commodity_crop_demand_scenario'
    )
;

insert
  into inputs
  select
      "Revision"
    , "Run"
    , "Region" || '.per_capita_commodity_crop_demand_scenario'
    , a."Subscript 2"
    , ''
    , "Index"
    , a."Value" / b."Value"
    , "Index Value"
    from inputs a
    inner join inputs b
      using ("Revision", "Run", "Index", "Index Value")
    cross join (
      select 'USA' as "Region"
      union all
      select 'ROW'
    ) r
    where a."Variable Name" = "Region" || '.commodity_disposition_data'
      and a."Subscript 1" = 'Food'
      and b."Variable Name" = "Region" || '.population_scenario'
;
insert
  into inputs
  select
      "Revision"
    , "Run"
    , "Region" || '.Per_Capita_''Other''_demand_GDP_scenario'
    , a."Subscript 2"
    , ''
    , "Index"
    , a."Value" / b."Value"
    , "Index Value"
    from inputs a
    inner join inputs b
      using ("Revision", "Run", "Index", "Index Value")
    cross join (
      select 'USA' as "Region"
      union all
      select 'ROW'
    ) r
    where a."Variable Name" = "Region" || '.commodity_disposition_data_Other'
      and a."Subscript 1" = 'Food'
      and b."Variable Name" = "Region" || '.population_scenario'
;




select
    "Variable Name"
  , "Subscript 1"
  , "Subscript 2"
  , count(*) as "Points"
  , min("Index Value") as "Start"
  , max("Index Value") as "Finish"
  from inputs
  where "Run" = 6
  group by "Variable Name", "Subscript 1", "Subscript 2"
  having count(*) > 1
order by 1, 2, 3
;


update inputs set "Index" = "Index" - 1960 where "Revision" = 772 and "Run" = 6 and "Variable Name" like '%.GDP_per_capita_DATA';
