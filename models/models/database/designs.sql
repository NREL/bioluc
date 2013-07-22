set search_path to model, public, pg_catalog;


create table designs (
  "Design"             smallint     not null,
  "Design Title"       varchar(50)  not null,
  "Design Description" varchar(500)         ,
  constraint pk_designs
    primary key ("Design")
);


-- vacuum full analyze designs;
