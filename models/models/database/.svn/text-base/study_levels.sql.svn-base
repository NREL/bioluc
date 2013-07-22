set search_path to model, public, pg_catalog;


create table study_levels (
  "Revision"      integer      not null,
  "Study"         smallint     not null,
  "Variable Name" varchar(100) not null,
  "Subscript 1"   varchar(25)  not null,
  "Subscript 2"   varchar(25)  not null,
  "Factor"        smallint     not null,
  "Level"         smallint     not null,
  "Value"         real         not null,
  constraint pk_study_levels
    primary key ("Revision", "Study", "Factor", "Level", "Variable Name", "Subscript 1", "Subscript 2"),
  constraint fk_study_levels_study
    foreign key ("Revision", "Study")
    references studies("Revision", "Study")
    on delete cascade
    on update cascade,
  constraint fk_study_levels_variable
    foreign key ("Revision", "Variable Name", "Subscript 1", "Subscript 2")
    references variables("Revision", "Variable Name", "Subscript 1", "Subscript 2")
    on delete cascade
    on update cascade
);


-- vacuum full analyze study_levels;
