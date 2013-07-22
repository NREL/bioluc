set search_path to luc, public, pg_catalog;


insert
  into inputs
  select "Revision", "Run" + 1, "Variable Name", "Subscript 1", "Subscript 2", "Index", "Value", "Index Value"
    from inputs
    where "Run" = 8
;


select * from temp_yield;

update inputs i
  set "Value" = "Potential_VFN_yield"
  from temp_yield t
  where "Run" = 9
    and "Variable Name" = "Region" || '.Potential_VFN_yield'
    and "Index Value" = "Year"
;

update inputs i
  set "Value" = coalesce("maize pred yld", "Value")
  from temp_yield t
  where "Run" = 9
    and "Variable Name" = "Region" || '.potential_commodity_crop_yield'
    and "Subscript 1" = 'Maize'
    and "Index Value" = "Year"
;
update inputs i
  set "Value" = coalesce("wheat pred yld", "Value")
  from temp_yield t
  where "Run" = 9
    and "Variable Name" = "Region" || '.potential_commodity_crop_yield'
    and "Subscript 1" = 'Wheat'
    and "Index Value" = "Year"
;
update inputs i
  set "Value" = coalesce("rice pred yld", "Value")
  from temp_yield t
  where "Run" = 9
    and "Variable Name" = "Region" || '.potential_commodity_crop_yield'
    and "Subscript 1" = 'Rice'
    and "Index Value" = "Year"
;
update inputs i
  set "Value" = coalesce("oil pred yld", "Value")
  from temp_yield t
  where "Run" = 9
    and "Variable Name" = "Region" || '.potential_commodity_crop_yield'
    and "Subscript 1" = 'OilCrop'
    and "Index Value" = "Year"
;
update inputs i
  set "Value" = coalesce("sugar pred yld", "Value")
  from temp_yield t
  where "Run" = 9
    and "Variable Name" = "Region" || '.potential_commodity_crop_yield'
    and "Subscript 1" = 'Sugar'
    and "Index Value" = "Year"
;

select * from temp_yield
select * from inputs where "Run" = 9
    and "Variable Name" like '%.potential_commodity_crop_yield'
    and "Subscript 1" = 'Sugar'