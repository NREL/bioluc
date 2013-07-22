set search_path to model, public, pg_catalog;


create view constants_1_region as
  select
      "Revision",
      "Sector",
      "Definition",
      "Variable Name",
      "Appalachian",
      "Corn Belt",
      "Delta States",
      "Lake States",
      "Mountain",
      "Northeast",
      "Northern Plains",
      "Pacific",
      "Southeast",
      "Southern Plains",
      "Units",
      "Reference"
    from sources
      natural join documentation
      natural join (
        select "Revision", "Variable Name", "Constant Value" as "Appalachian"
          from constants
          where "Subscript 1" = 'A' and "Subscript 2" = ''
             or "Subscript 1" = '' and "Subscript 2" = 'A'
      ) a
      natural join (
        select "Revision", "Variable Name", "Constant Value" as "Corn Belt"
          from constants
          where "Subscript 1" = 'CB' and "Subscript 2" = ''
             or "Subscript 1" = '' and "Subscript 2" = 'CB'
      ) cb
      natural join (
        select "Revision", "Variable Name", "Constant Value" as "Delta States"
          from constants
          where "Subscript 1" = 'DS' and "Subscript 2" = ''
             or "Subscript 1" = '' and "Subscript 2" = 'DS'
      ) ds
      natural join (
        select "Revision", "Variable Name", "Constant Value" as "Lake States"
          from constants
          where "Subscript 1" = 'LS' and "Subscript 2" = ''
             or "Subscript 1" = '' and "Subscript 2" = 'LS'
      ) ls
      natural join (
        select "Revision", "Variable Name", "Constant Value" as "Mountain"
          from constants
          where "Subscript 1" = 'M' and "Subscript 2" = ''
             or "Subscript 1" = '' and "Subscript 2" = 'M'
      ) m
      natural join (
        select "Revision", "Variable Name", "Constant Value" as "Northeast"
          from constants
          where "Subscript 1" = 'NE' and "Subscript 2" = ''
             or "Subscript 1" = '' and "Subscript 2" = 'NE'
      ) ne
      natural join (
        select "Revision", "Variable Name", "Constant Value" as "Northern Plains"
          from constants
          where "Subscript 1" = 'NP' and "Subscript 2" = ''
             or "Subscript 1" = '' and "Subscript 2" = 'NP'
      ) np
      natural join (
        select "Revision", "Variable Name", "Constant Value" as "Pacific"
          from constants
          where "Subscript 1" = 'P' and "Subscript 2" = ''
             or "Subscript 1" = '' and "Subscript 2" = 'P'
      ) p
      natural join (
        select "Revision", "Variable Name", "Constant Value" as "Southeast"
          from constants
          where "Subscript 1" = 'SE' and "Subscript 2" = ''
             or "Subscript 1" = '' and "Subscript 2" = 'SE'
      ) se
      natural join (
        select "Revision", "Variable Name", "Constant Value" as "Southern Plains"
          from constants
          where "Subscript 1" = 'SP' and "Subscript 2" = ''
             or "Subscript 1" = '' and "Subscript 2" = 'SP'
      ) sp
  order by "Revision", "Sector", "Definition", "Variable Name";
 