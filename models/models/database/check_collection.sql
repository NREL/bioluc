set search_path to model, public, pg_catalog;


create view check_collection as
  select *
    from collection i
    where not exists (
      select *
        from variables v
        where i."Revision" = v."Revision"
          and i."Variable Name" = v."Variable Name"
    );
