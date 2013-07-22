set search_path to luc, public, pg_catalog;


select "Variable Name"
  from variables
  where "Revision" = 1211
except
select "Variable Name"
  from variables
  where "Revision" = 1214
;

insert
  into inputs
  select
      1214
    , 12
    , "Variable Name"
    , "Subscript 1"
    , "Subscript 2"
    , "Index"
    , "Value"
    , "Index Value"
    from inputs
    where "Run" = 10
      and "Variable Name" in (
        select "Variable Name"
          from variables
          where "Revision" = 1211
      )
;
    


select
    "Variable Name"
  , "Subscript 1"
  , "Subscript 2"
  , "Constant Value"
  , "Value"
  , 2 * ("Value" - "Constant Value") / ("Value" + "Constant Value") as "Difference"
  from constants c
  inner join inputs i
    using ("Variable Name", "Subscript 1", "Subscript 2")
  where c."Revision" = 1214
    and i."Run" = 12
    and "Value" <> "Constant Value"
    and abs(2 * ("Value" - "Constant Value") / ("Value" + "Constant Value")) > 6e-6
;


select
    "Variable Name"
  , "Subscript 1"
  , "Subscript 2"
  , "Index"
  , "X"
  , "Index Value"
  , "Y"
  , "Value"
  , 2 * ("Value" - "Y") / ("Value" + "Y") as "Difference"
  from graphs g
  inner join inputs i
    using ("Variable Name", "Subscript 1", "Subscript 2", "Index")
  where g."Revision" = 1214
    and i."Run" = 12
    and (
      g."X" <> i."Index Value"
      or 0 = 1 and "Value" <> "Y"
         and abs(2 * ("Value" - "Y") / ("Value" + "Y")) > 6e-6
    )
order by 1, 2, 3, 4
;



