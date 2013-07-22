set search_path to model, public, pg_catalog;


create view compare_graphs as
  select *, "Value" - "Y" as "Difference"
    from inputs
      natural join graphs
    where "Index" <> 0
      and "Value" <> "Y"
  order by "Revision", "Run", "Difference" desc;