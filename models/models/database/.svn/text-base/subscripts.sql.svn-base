set search_path to luc, public, pg_catalog;


create table subscripts (
  "Revision"            integer     not null,
  "Subscript Dimension" varchar(25) not null,
  "Subscript Element"   varchar(25) not null,
  "Subscript Index"     smallint    not null,
  constraint pk_subscripts
    primary key ("Revision", "Subscript Dimension", "Subscript Element"),
  constraint fk_subscripts_revision
    foreign key ("Revision")
    references revisions("Revision")
    on delete cascade
    on update cascade,
  constraint uk_subscripts_1
    unique ("Revision", "Subscript Dimension", "Subscript Index")
);


grant select, insert
  on subscripts
  to bsmclient;


-- vacuum full analyze subscripts;
