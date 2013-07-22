set search_path to model, public, pg_catalog;


create table design_levels (
  "Design"        smallint     not null,
  "Trial"         smallint     not null,
  "Factor"        smallint     not null,
  "Level"         smallint     not null,
  constraint pk_design_levels
    primary key ("Design", "Trial", "Factor"),
  constraint fk_design_levels_design
    foreign key ("Design")
    references designs("Design")
    on delete cascade
    on update cascade
);


-- vacuum full analyze design_levels;
