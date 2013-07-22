set search_path to model, public, pg_catalog;


create table studies (
  "Revision"          integer      not null,
  "Study"             smallint     not null,
  "Study Title"       varchar(50)  not null,
  "Study Description" varchar(500)         ,
  "First Run"         integer              ,
  "Last Run"          integer              ,
  constraint pk_studies
    primary key ("Study"),
  constraint fk_studies_revision
    foreign key ("Revision")
    references revisions("Revision")
    on delete cascade
    on update cascade,
  constraint uk_studies_1
    unique ("Revision", "Study")
);


-- vacuum full analyze studies;
