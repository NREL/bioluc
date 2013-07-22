set search_path to luc, public, pg_catalog;


create table arrays (
  "Revision"              integer      not null,
  "Variable Name"         varchar(100) not null,
  "Subscript 1 Dimension" varchar(25)          ,
  "Subscript 2 Dimension" varchar(25)          ,
  constraint pk_arrays
    primary key ("Revision", "Variable Name"),
  constraint fk_arrays_revision
    foreign key ("Revision")
    references revisions("Revision")
    on delete cascade
    on update cascade
);


grant select, insert
  on arrays
  to bsmclient;


-- vacuum full analyze arrays;
