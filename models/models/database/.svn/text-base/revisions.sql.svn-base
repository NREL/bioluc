set search_path to luc, public, pg_catalog;


create table revisions (
  "Revision"             integer      not null,
  "Revision Title"       varchar(50)  not null,
  "Revision Description" varchar(500)         ,
  constraint pk_revisions
    primary key ("Revision")
);


grant select
  on revisions
  to bsmclient;


-- vacuum full analyze revisions;
