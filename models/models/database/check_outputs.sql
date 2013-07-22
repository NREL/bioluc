set search_path to luc, public, pg_catalog;


create view check_outputs as
  select o.*
    from outputs o
    where not exists (
      select *
        from runs r
          natural join variables v
        where o."Run" = r."Run"
          and o."Variable Name" = v."Variable Name"
          and o."Subscript 1" = v."Subscript 1"
          and o."Subscript 2" = v."Subscript 2"
    );
    