set search_path to luc, public, pg_catalog;


create view stella_input as

  select
      "Revision",
      "Run",
      "Variable Name",
      "Variable Name" as "Label",
      1 as "Section",
      1 as "Row",
      1 as "Column",
      "Value"
    from inputs
    where "Index" = 0
      and "Subscript 1" = ''
      and "Subscript 2" = ''

  union

  select
      "Revision",
      "Run",
      "Variable Name",
      "Variable Name",
      1 as "Section",
      1 as "Row",
      "Subscript Index" as "Column",
      "Value"
    from inputs
      inner join subscripts
        using("Revision")
    where "Index" = 0
      and "Subscript 1" = "Subscript Element"
      and "Subscript 2" = ''

  union

  select
      "Revision",
      "Run",
      "Variable Name",
      case
        when a."Subscript Index" = 1 then "Variable Name"
        else '...'
      end as "Label",
      1 as "Section",
      a."Subscript Index" as "Row",
      b."Subscript Index" as "Column",
      "Value"
    from inputs
      inner join subscripts a
        using ("Revision")
      inner join subscripts b
        using ("Revision")
    where "Index" = 0
      and "Subscript 1" = a."Subscript Element"
      and "Subscript 2" = b."Subscript Element"

  union

  select
      "Revision",
      "Run",
      "Variable Name",
      "Variable Name" as "Label",
      1 as "Section",
      1 as "Row",
      "Index" as "Column",
      "Value"
    from inputs
    where "Index" <> 0
      and "Subscript 1" = ''
      and "Subscript 2" = ''

  union

  select
      "Revision",
      "Run",
      "Variable Name",
      case
        when "Subscript Index" = 1 then "Variable Name"
        else '...'
      end as "Label",
      1 as "Section",
      "Subscript Index" as "Row",
      "Index" as "Column",
      "Value"
    from inputs
      inner join subscripts
        using ("Revision")
    where "Index" <> 0
      and "Subscript 1" = "Subscript Element"
      and "Subscript 2" = ''

  union

  select
      "Revision",
      "Run",
      "Variable Name",
      case
        when a."Subscript Index" = 1 and b."Subscript Index" = 1 then "Variable Name"
        when a."Subscript Index" <> 1 and b."Subscript Index" = 1 then '***'
        else '...'
      end as "Label",
      a."Subscript Index" as "Section",
      b."Subscript Index" as "Row",
      "Index" as "Column",
      "Value"
    from inputs
      inner join subscripts a
        using ("Revision")
      inner join subscripts b
        using ("Revision")
    where "Index" <> 0
      and "Subscript 1" = a."Subscript Element"
      and "Subscript 2" = b."Subscript Element"

  order by 1, 2, 3, 5, 6, 7;


grant all on stella_input to bsmclient