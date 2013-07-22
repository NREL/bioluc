set search_path to luc, public, pg_catalog;


select
    "Variable Name"
  , "Subscript 1"
  , "Subscript 2"
  , min("Index") as "First Index"
  , max("Index") as "Last Index"
  , min("Index Value") as "First Year"
  , max("Index Value") as "Last Year"
  , count(*) as "Number of Years"
  from inputs
  where "Run" = 10
  group by "Variable Name", "Subscript 1", "Subscript 2"
  having count(*) > 1
order by 1, 2, 3
;


