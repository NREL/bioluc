set search_path to luc, public, pg_catalog;


create table graphs (
  "Revision"       integer      not null,
  "Variable Name"  varchar(100) not null,
  "Subscript 1"    varchar(25)  not null,
  "Subscript 2"    varchar(25)  not null,
  "Index"          smallint     not null,
  "X"              real         not null,
  "Y"              real         not null,
  constraint pk_graphs
    primary key ("Revision", "Variable Name", "Subscript 1", "Subscript 2", "Index"),
  constraint fk_graphs_revision
    foreign key ("Revision")
    references revisions("Revision")
    on delete cascade
    on update cascade,
  constraint fk_graphs_variable
    foreign key ("Revision", "Variable Name", "Subscript 1", "Subscript 2")
    references variables("Revision", "Variable Name", "Subscript 1", "Subscript 2")
    on delete cascade
    on update cascade
);


create index ix_graphs_1
  on graphs("Variable Name", "Subscript 1", "Subscript 2");


grant select, insert
  on graphs
  to bsmclient;


-- vacuum full analyze graphs;
