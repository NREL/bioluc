set search_path to model, public, pg_catalog;


create view documentation as
  select
      "Revision",
      "Variable Name",
      max("Units") as "Units",
      max("Definition") as "Definition",
      max("Type") as "Type",
      max("Source") as "Source",
      max("Notes") as "Notes",
      max("Comment") as "Comment",
      max("Other") as "Other"
    from variables
    group by "Revision", "Variable Name";
    