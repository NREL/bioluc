set search_path to luc, public, pg_catalog;


select
    "Variable Name"
  , "Subscript 1"
  , "Subscript 2"
  , a."Constant Value" as "Value [Rev 1214]"
  , b."Constant Value" as "Value [Rev 1222]"
  from constants a
  inner join constants b
    using ("Variable Name", "Subscript 1", "Subscript 2")
  where a."Constant Value" <> b."Constant Value"
    and a."Revision" = 1214
    and b."Revision" = 1222
order by 1, 2, 3
;


select
    "Variable Name"
  , "Subscript 1"
  , "Subscript 2"
  , "Index"
  , a."X" as "X [Rev 1214]"
  , a."Y" as "Y [Rev 1214]"
  , b."X" as "X [Rev 1222]"
  , b."Y" as "Y [Rev 1222]"
  from graphs a
  inner join graphs b
    using ("Variable Name", "Subscript 1", "Subscript 2", "Index")
  where (a."X" <> b."X" or a."Y" <> b."Y")
    and a."Revision" = 1214
    and b."Revision" = 1222
;



select
    "Variable Name"
  , "Subscript 1"
  , "Subscript 2"
  , "Index"
  , "Y"
  , "X"
  from graphs
  where "Revision" = 1239
union
select
    "Variable Name"
  , "Subscript 1"
  , "Subscript 2"
  , 0
  , "Constant Value"
  , null
  from constants
  where "Revision" = 1239
order by 1, 2, 3, 4
;
