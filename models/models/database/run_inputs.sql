set search_path to model, public, pg_catalog;


create view run_inputs as
  select "Run", "Variable Name", "Subscript 1", "Subscript 2", "Value", "Units"
    from runs
    natural join variables
    natural join constants
    natural join outputs
    natural join (
      select "Run", min("Time") as "Time"
        from outputs
        group by "Run"
    ) t;
    