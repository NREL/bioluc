set search_path to "gluc-data", public, pg_catalog;


create table "Data Sources" (
  "Revision" integer not null
, "Run" integer not null
, "Variable Name" varchar(100) not null
, "Source" varchar(1000)
, "Processing" varchar(1000)
, constraint "PK Data Sources"
  primary key ("Revision", "Run", "Variable Name")
)
;


insert
  into "Data Sources"
  select distinct
      "Revision"
    , "Run"
    , "Variable Name"
    , null
    , null
    from luc.inputs
    where "Run" = 10
;


insert
  into "Data Sources"
  select distinct
      "Revision"
    , 10
    , "Variable Name"
    , 'N/A'
    , null
    from luc.constants
    where "Revision" = 947
      and "Variable Name" not in (
        select "Variable Name"
          from "Data Sources"
      )
;


insert
  into "Data Sources"
  select distinct
      "Revision"
    , 10
    , "Variable Name"
    , 'N/A'
    , null
    from luc.graphs
    where "Revision" = 947
      and "Variable Name" not in (
        select "Variable Name"
          from "Data Sources"
      )
;


begin transaction;

delete
  from luc.inputs
  where "Run" = 10
    and "Variable Name" like '%.GDP_per_Capita_Scenario'
;

insert
  into luc.inputs
  select
      "Revision"
    , "Run"
    , regexp_replace("Variable Name", 'capita_DATA', 'Capita_Scenario')
    , "Subscript 1"
    , "Subscript 2"
    , "Index"
    , "Value"
    , "Index Value"
    from luc.inputs
  where "Run" = 10
    and "Variable Name" like '%.GDP_per_capita_DATA'

commit;

