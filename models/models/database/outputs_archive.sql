set search_path to model, public, pg_catalog;


create table outputs_archive (
  "Run"           integer      not null,
  "Variable Name" varchar(100) not null,
  "Subscript 1"   varchar(25)  not null,
  "Subscript 2"   varchar(25)  not null,
  "Time"          real         not null,
  "Value"         real         not null,
  constraint pk_outputs_archive
    primary key ("Run", "Variable Name", "Subscript 1", "Subscript 2", "Time"),
  constraint fk_outputs_archive_run
    foreign key ("Run")
    references runs("Run")
    on delete cascade
    on update cascade
);


--create index ix_outputs_archive_1
--  on outputs_archive("Variable Name", "Subscript 1", "Subscript 2");


grant select, insert
  on outputs_archive
  to bsmclient;


-- vacuum full analyze outputs_archive;
