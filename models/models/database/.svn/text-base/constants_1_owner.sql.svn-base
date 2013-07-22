set search_path to model, public, pg_catalog;


create view constants_1_owner as
  select
      "Revision",
      "Sector",
      "Definition",
      "Variable Name",
      "Branded Independent",
      "Hypermart",
      "Oil Owned",
      "Unbranded Independent",
      "Units",
      "Reference"
    from sources
      natural join documentation
      natural join (
        select "Revision", "Variable Name", "Constant Value" as "Branded Independent"
          from constants
          where "Subscript 1" = 'BrandIndep' and "Subscript 2" = ''
             or "Subscript 1" = '' and "Subscript 2" = 'BrandIndep'
      ) brandindep
      natural join (
        select "Revision", "Variable Name", "Constant Value" as "Hypermart"
          from constants
          where "Subscript 1" = 'HMart' and "Subscript 2" = ''
             or "Subscript 1" = '' and "Subscript 2" = 'HMart'
      ) hmart
      natural join (
        select "Revision", "Variable Name", "Constant Value" as "Oil Owned"
          from constants
          where "Subscript 1" = 'OilOwned' and "Subscript 2" = ''
             or "Subscript 1" = '' and "Subscript 2" = 'OilOwned'
      ) oilowned
      natural join (
        select "Revision", "Variable Name", "Constant Value" as "Unbranded Independent"
          from constants
          where "Subscript 1" = 'UnbrandIndep' and "Subscript 2" = ''
             or "Subscript 1" = '' and "Subscript 2" = 'UnbrandIndep'
      ) unbrandindep
  order by "Revision", "Sector", "Definition", "Variable Name";
 