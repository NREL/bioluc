set search_path to model, public, pg_catalog;


create view check_variables as
  select v.*
    from variables v
      natural join arrays a
    where "Subscript 1" not in (
      select "Subscript Element"
        from subscripts s
        where v."Revision" = s."Revision"
          and a."Subscript 1 Dimension" = s."Subscript Dimension"
    ) or "Subscript 2" not in (
      select "Subscript Element"
        from subscripts s
        where v."Revision" = s."Revision"
          and a."Subscript 2 Dimension" = s."Subscript Dimension"
      union
      select ''
    );
