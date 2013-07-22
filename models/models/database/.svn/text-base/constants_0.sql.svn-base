set search_path to model, public, pg_catalog;


create view constants_0 as
  select
      "Revision",
      "Sector",
      "Definition",
      "Variable Name",
      "Constant Value" as "Value",
      "Units",
      "Reference"
    from constants
      natural join documentation
      natural join sources
    where "Subscript 1" = ''
  order by "Revision", "Sector", "Definition", "Variable Name";
