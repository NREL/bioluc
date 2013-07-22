set search_path to model, public, pg_catalog;


create view output_statistics as
  select "Revision", "Revision Title", "Run", "Run Title", count(*) as "Records"
    from revisions
      natural join runs
      natural join outputs
    group by "Revision", "Revision Title", "Run", "Run Title"
  order by "Revision", "Run";
  