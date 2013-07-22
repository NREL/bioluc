set search_path to luc, public, pg_catalog;


create table outputs (
  "Run"           integer      not null,
  "Variable Name" varchar(100) not null,
  "Subscript 1"   varchar(25)  not null,
  "Subscript 2"   varchar(25)  not null,
  "Time"          real         not null,
  "Value"         real         not null,
  constraint pk_outputs
    primary key ("Run", "Variable Name", "Subscript 1", "Subscript 2", "Time"),
  constraint fk_outputs_run
    foreign key ("Run")
    references runs("Run")
    on delete cascade
    on update cascade
);


--create index ix_outputs_1
--  on outputs("Variable Name", "Subscript 1", "Subscript 2");


grant select, insert
  on outputs
  to bsmclient;


-- vacuum full analyze outputs;
