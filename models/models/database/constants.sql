set search_path to luc, public, pg_catalog;


create table constants (
  "Revision"       integer      not null,
  "Variable Name"  varchar(100) not null,
  "Subscript 1"    varchar(25)  not null,
  "Subscript 2"    varchar(25)  not null,
  "Constant Value" real         not null,
  constraint pk_constants
    primary key ("Revision", "Variable Name", "Subscript 1", "Subscript 2"),
  constraint fk_constants_revision
    foreign key ("Revision")
    references revisions("Revision")
    on delete cascade
    on update cascade,
  constraint fk_constants_variable
    foreign key ("Revision", "Variable Name", "Subscript 1", "Subscript 2")
    references variables("Revision", "Variable Name", "Subscript 1", "Subscript 2")
    on delete cascade
    on update cascade
);


create index ix_constants_1
  on constants("Variable Name", "Subscript 1", "Subscript 2");


grant select, insert
  on constants
  to bsmclient;


-- vacuum full analyze constants;
