set search_path to model, public, pg_catalog;


create table subscript_labels (
  "Revision"            integer     not null,
  "Subscript Element"   varchar(25) not null,
  "Subscript"           varchar(25) not null,
  constraint pk_subscript_labels
    primary key ("Revision", "Subscript Element"),
  constraint fk_subscript_labels_revision
    foreign key ("Revision")
    references revisions("Revision")
    on delete cascade
    on update cascade
);


-- vacuum full analyze subscript_labels;
