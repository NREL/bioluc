set search_path to model, public, pg_catalog;


create view compare_constants as
  select *, "Value" - "Constant Value" as "Difference"
    from inputs
      natural join constants
    where "Index" = 0
      and "Value" <> "Constant Value"
  order by "Revision", "Run", "Difference" desc;