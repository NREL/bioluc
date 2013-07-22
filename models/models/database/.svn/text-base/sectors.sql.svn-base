set search_path to model, public, pg_catalog;


create table sectors (
  "Revision" integer not null,
  "Module" character varying(50) not null,
  "Sector" character varying(50) not null,
  "Sector Description" character varying(500),
  constraint pk_sectors
    primary key ("Revision", "Module", "Sector"),
  constraint fk_sectors_module
    foreign key ("Revision", "Module")
    references modules("Revision", "Module")
    on update cascade
    on delete cascade
);