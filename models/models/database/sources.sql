set search_path to model, public, pg_catalog;


create table sources (
  "Revision"      integer                not null,
  "Module"        varchar(50)            not null,
  "Sector"        varchar(50)            not null,
  "Variable Name" varchar(100)           not null,
  "Reference"     varchar(20)            not null,
  "Data Quality"  varchar(50)                   ,
  "Editor"        varchar(50)                   ,
  "Needs Scrutiny" boolean                      ,
  "Annotation"    text                          ,
  constraint pk_sources
    primary key ("Revision", "Variable Name"),
  constraint fk_sources_sector
    foreign key ("Revision", "Module", "Sector")
    references sectors("Revision", "Module", "Sector")
    on delete cascade
    on update cascade,
  constraint fk_sources_reference
    foreign key ("Reference")
    references bibliography("Reference")
    on delete restrict
    on update cascade
);


-- vacuum full analyze variables;
