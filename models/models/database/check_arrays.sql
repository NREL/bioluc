set search_path to model, public, pg_catalog;


create view check_arrays as
  select *
    from arrays a
    where "Subscript 1 Dimension" not in (
      select "Subscript Dimension"
        from subscripts s
        where a."Revision" = s."Revision"
    ) or "Subscript 2 Dimension" not in (
      select "Subscript Dimension"
        from subscripts s
        where a."Revision" = s."Revision"
      union
      select ''
    );
    