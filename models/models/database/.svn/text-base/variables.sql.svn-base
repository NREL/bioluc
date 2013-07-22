set search_path to luc, public, pg_catalog;


create table variables (
  "Revision"      integer                not null,
  "Variable Name" varchar(100)            not null,
  "Subscript 1"	  varchar(25)                    ,
  "Subscript 2"   varchar(25)                    ,
  "Units"         varchar(100)                   ,
  "Definition"    text                           ,
  "Type"          text                           ,
  "Source"        text                           ,
  "Notes"         text                           ,
  "Comment"       text                           ,
  "Other"         text                           ,
  constraint pk_variables
    primary key ("Revision", "Variable Name", "Subscript 1", "Subscript 2"),
  constraint fk_variables_revision
    foreign key ("Revision")
    references revisions("Revision")
    on delete cascade
    on update cascade
);


grant select, insert
  on variables
  to bsmclient;


-- vacuum full analyze variables;
