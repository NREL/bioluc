set search_path to luc, public, pg_catalog;


create view output_suppression as
  select "Revision", "Variable Name"
    from variables
  except
  select "Revision", "Variable Name"
    from output_control
    where "Control" <> 'X';