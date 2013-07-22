set search_path to model, public, pg_catalog;


create view problems as
  select *
    from (
      select 'check_arrays' as "Check", count(*) as "Problems"
        from check_arrays
      union
      select 'check_outputs', count(*)
        from check_outputs
      union
      select 'check_variables', count(*)
        from check_variables
      union
      select 'check_inputs', count(*)
        from check_inputs
      union
      select 'check_graphs', count(*)
        from check_graphs
      union
      select 'check_collection', count(*)
        from check_collection
    ) p
    where "Problems" <> 0
  order by "Check";