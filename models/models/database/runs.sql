set search_path to luc, public, pg_catalog;


create table runs (
  "Revision"        integer      not null,
  "Run"             integer      not null,
  "Run Title"       varchar(50)  not null,
  "Run Description" varchar(500)         ,
  constraint pk_runs
    primary key ("Run"),
  constraint fk_runs_revision
    foreign key ("Revision")
    references revisions("Revision")
    on delete cascade
    on update cascade,
  constraint uk_runs_1
    unique ("Revision", "Run")
);


grant select
  on runs
  to bsmclient;


-- vacuum full analyze runs;
