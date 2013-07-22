set search_path to model, public, pg_catalog;


create view constants_1_annuals as
  select
      "Revision",
      "Sector",
      "Definition",
      "Variable Name",
      "Corn",
      "Cotton",
      "Other Grains",
      "Soy",
      "Wheat",
      "Units",
      "Reference"
    from sources
      natural join documentation
      natural join (
        select "Revision", "Variable Name", "Constant Value" as "Corn"
          from constants
          where "Subscript 1" = 'Corn' and "Subscript 2" = ''
             or "Subscript 1" = '' and "Subscript 2" = 'Corn'
      ) corn
      natural join (
        select "Revision", "Variable Name", "Constant Value" as "Cotton"
          from constants
          where "Subscript 1" = 'Cotton' and "Subscript 2" = ''
             or "Subscript 1" = '' and "Subscript 2" = 'Cotton'
      ) cotton
      natural join (
        select "Revision", "Variable Name", "Constant Value" as "Other Grains"
          from constants
          where "Subscript 1" = 'Other_Grains' and "Subscript 2" = ''
             or "Subscript 1" = '' and "Subscript 2" = 'Other_Grains'
      ) othergrains
      natural join (
        select "Revision", "Variable Name", "Constant Value" as "Soy"
          from constants
          where "Subscript 1" = 'Soy' and "Subscript 2" = ''
             or "Subscript 1" = '' and "Subscript 2" = 'Soy'
      ) soy
      natural join (
        select "Revision", "Variable Name", "Constant Value" as "Wheat"
          from constants
          where "Subscript 1" = 'Wheat' and "Subscript 2" = ''
             or "Subscript 1" = '' and "Subscript 2" = 'Wheat'
      ) wheat
  order by "Revision", "Sector", "Definition", "Variable Name";
 