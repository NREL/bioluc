set search_path to model, public, pg_catalog;


create view check_graphs as
  select *
    from inputs i
    where not exists (
      select *
        from graphs g
        where i."Revision" = g."Revision"
          and i."Variable Name" = g."Variable Name"
          and i."Subscript 1" = g."Subscript 1"
          and i."Subscript 2" = g."Subscript 2"
          and i."Index" = g."Index"
          and i."Index Value" = g."X"
    ) and "Index" <> 0;
    