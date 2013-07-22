set search_path to luc, public, pg_catalog;


create table inputs (
  "Revision"      integer      not null,
  "Run"           integer      not null,
  "Variable Name" varchar(100) not null,
  "Subscript 1"   varchar(25)  not null,
  "Subscript 2"   varchar(25)  not null,
  "Index"         smallint     not null,
  "Value"         real         not null,
  "Index Value"   real                 ,
  constraint pk_inputs
    primary key ("Revision", "Run", "Variable Name", "Subscript 1", "Subscript 2", "Index"),
  constraint fk_inputs_run
    foreign key ("Revision", "Run")
    references runs("Revision", "Run")
    on delete cascade
    on update cascade,
  constraint fk_inputs_variable
    foreign key ("Revision", "Variable Name", "Subscript 1", "Subscript 2")
    references variables("Revision", "Variable Name", "Subscript 1", "Subscript 2")
    on delete cascade
    on update cascade
);


create index ix_inputs_1
  on inputs("Variable Name", "Subscript 1", "Subscript 2");


-- vacuum full analyze inputs;
