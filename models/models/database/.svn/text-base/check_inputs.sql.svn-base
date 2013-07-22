set search_path to model, public, pg_catalog;


create view check_inputs as
  select *
    from (
      select "Revision", "Run", "Variable Name", count(*) as "Inputs"
        from inputs
        group by "Revision", "Run", "Variable Name"
    ) i
      natural join (
        select "Revision", "Variable Name", max("Variables") as "Variables"
          from (
            select "Revision", "Variable Name", count(*) as "Variables"
              from variables
              group by "Revision", "Variable Name"
            union
            select "Revision", "Variable Name", count(*) as "Variables"
              from graphs
              group by "Revision", "Variable Name"
          ) vv
          group by "Revision", "Variable Name"
    ) v
    where "Inputs" <> "Variables";
