set search_path to luc, public, pg_catalog;


insert
  into inputs
  select
      947
    , 10
    , "Variable Name"
    , "Subscript 1"
    , "Subscript 2"
    , "Index"
    , "Value"
    , "Index Value"
    from inputs
    where "Revision" = 867
;


delete 
  from inputs
  where "Revision" = 947
    and "Variable Name" like '%.potential_commodity_crop_yield'

insert
  into inputs
  select
      947
    , 10
    , region || '.potential_commodity_crop_yield'
    , case
        when variable = 'maize' then 'Maize'
        when variable = 'Wheat ' then 'Wheat'
        when variable = 'Ceral NEC' then 'CerealsGrainNEC'
        when variable = 'Oil' then 'OilCrop'
        else variable
      end
    , ''
    , year - 1960
    , value
    , year
    from new_yields
    where variable in ('maize', 'Wheat ', 'Rice', 'Ceral NEC', 'Oil', 'Sugar')
;

delete 
  from inputs
  where "Revision" = 947
    and "Variable Name" like '%.potential_crop_land_forage_yield'
;

insert
  into inputs
  select
      947
    , 10
    , region || '.potential_crop_land_forage_yield'
    , ''
    , ''
    , year - 1960
    , value
    , year
    from new_yields
    where variable in ('forage yield')

delete 
  from inputs
  where "Revision" = 947
    and "Variable Name" like '%.potential_fiber_yield'
;

insert
  into inputs
  select
      947
    , 10
    , region || '.potential_fiber_yield'
    , ''
    , ''
    , year - 1960
    , value
    , year
    from new_yields
    where variable in ('fiber_yield')


delete 
  from inputs
  where "Revision" = 947
    and "Variable Name" like '%.Potential_other_yield'
;

insert
  into inputs
  select
      947
    , 10
    , region || '.Potential_other_yield'
    , ''
    , ''
    , year - 1960
    , value
    , year
    from new_yields
    where variable in ('other_yield')

delete 
  from inputs
  where "Revision" = 947
    and "Variable Name" like '%.Potential_VFN_yield'
;

insert
  into inputs
  select
      947
    , 10
    , region || '.Potential_VFN_yield'
    , ''
    , ''
    , year - 1960
    , value
    , year
    from new_yields
    where variable in ('Potential_VFN_yield')




create table new_demands_xref as
  select distinct
      variable
    , '' :: varchar(100) as "Variable Name"
    , '' :: varchar(25) as "Subscript 1"
    , '' :: varchar(25) as "Subscript 2"
    from new_demands
;
alter table new_demands_xref
  add constraint pk_new_demands_xref
    primary key (variable)
;


select 'USA.' || "Variable Name", "Subscript 1", "Subscript 2"
  from new_demands_xref
except
select "Variable Name", "Subscript 1", "Subscript 2"
  from variables
  where "Revision" = 947


begin transaction; 
abort

delete
  from inputs i
  where "Run" = 10
    and exists (
      select *
        from new_demands_xref x
        where i."Variable Name" in ('USA.' || "Variable Name", 'ROW.' || "Variable Name")
          and "Subscript 1" = i."Subscript 1"
          and "Subscript 2" = i."Subscript 2"
    )
;


update new_demands set region = 'USA' where region  = 'US';

insert
  into inputs
  select
      947
    , 10
    , region || '.' || "Variable Name"
    , "Subscript 1"
    , "Subscript 2"
    , year - 1960
    , value
    , year
    from new_demands_xref
    natural join new_demands


insert
  into inputs
  select
      947
    , 10
    , "Variable Name"
    , "Subscript 1"
    , "Subscript 2"
    , "Index"
    , 0
    , "Index Value"
    from (
      select distinct "Variable Name", "Index", "Index Value"
        from inputs
        where "Run" = 10
    ) a
    natural join (
      select distinct "Variable Name", "Subscript 1", "Subscript 2"
        from inputs
        where "Run" = 10
    ) b
  except
  select
      947
    , 10
    , "Variable Name"
    , "Subscript 1"
    , "Subscript 2"
    , "Index"
    , 0
    , "Index Value"
    from inputs
    where "Run" = 10    


select
    "Variable Name"
  , "Subscript 1"
  , "Subscript 2"
  , min("Index Value") as "First Year"
  , max("Index Value") as "Last Year"
  , count(*) as "Numsber of Years"
  from inputs
  where "Run" = 10
  group by "Variable Name", "Subscript 1", "Subscript 2"
  having count(*) > 1
order by 1, 2, 3
;


