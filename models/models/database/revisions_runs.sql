set search_path to model, public, pg_catalog;


create view revisions_runs as
  select *
    from revisions
      natural join runs;
      