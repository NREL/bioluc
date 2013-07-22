set search_path to model, public, pg_catalog;


create table modules (
  "Revision" integer not null,
  "Module" character varying(50) not null,
  "Module Description" character varying(500),
  constraint pk_modules
    primary key ("Revision", "Module"),
  constraint fk_modules_revision
    foreign key ("Revision")
    references revisions("Revision")
    on update cascade
    on delete cascade
);