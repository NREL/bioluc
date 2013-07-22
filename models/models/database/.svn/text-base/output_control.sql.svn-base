set search_path to luc, public, pg_catalog;


create table output_control (
  "Revision" integer not null,
  "Variable Name" varchar(100) not null,
  "Control" char(1) not null,
  constraint pk_output_control
    primary key ("Revision", "Variable Name"),
  constraint fk_output_control_revision
    foreign key ("Revision")
    references revisions("Revision")
    on update cascade
    on delete cascade,
  constraint ck_output_control_1
    check ("Control" in ('I', 'O', 'X'))
);