set search_path to luc, public, pg_catalog;


begin transaction;

create temporary table x as
  select
      858 as "Revision"
    , 7 as "Run"
    , case when "Region" = 'United States of America' then 'USA' when "Region" = 'Rest of World' then 'ROW' end || '.commodity_disposition_data'
      || case
        when "Crop Element" = 'Crops n.e.c.' then '_Other'
        when "Crop Element" = 'Vegetables, fruit, nuts' then '_VFN'
        when "Crop Element" = 'Plant-based fibres' then '_Fiber'
        else ''
      end as "Variable Name"
    , case
        when "Crop Element" = 'Paddy rice' then 'Rice'
        when "Crop Element" = 'Cereals grain n.e.c.' then 'CerealsGrainNEC'
        when "Crop Element" = 'Oil seeds' then 'OilCrop'
        when "Crop Element" = 'Sugar cane, sugar beet' then 'Sugar'
        when "Crop Element" in ('Wheat', 'Maize') then "Crop Element"
        else regexp_replace("Disposition", ' ', '')
      end as "Subscript 1"
    , case
        when "Crop Element" in ('Paddy rice', 'Cereals grain n.e.c.', 'Oil seeds', 'Sugar cane, sugar beet', 'Wheat', 'Maize') then regexp_replace("Disposition", ' ', '') 
        else ''
      end as "Subscript 2"
    , "Year" - 1960 as "X"
    , coalesce("Quantity [Gg/yr]", 0) as "Y"
    , "Year" as "Z"
    from "Crop Disposition"
    where "Region" in ('United States of America', 'Rest of World')
      and "Disposition" <> 'Production'
  order by 1, 2, 3, 4, 6
;

delete from inputs where "Run" = 7 and "Variable Name" in (select "Variable Name" from x);

insert into inputs select * from x;

commit;
