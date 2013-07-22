set search_path to luc, public, pg_catalog;


create table "STELLA Arrays" (
  "Dimension"  varchar(30) not null
, "Index"      varchar(30) not null
, "Sequence"   smallint    not null
, "Other Name" varchar(30)
, constraint "PK STELLA Arrays"
    primary key ("Dimension", "Index")
, constraint "UK1 STELLA Arrays"
    unique ("Dimension", "Sequence")
)
;


insert
  into "STELLA Arrays"
  values('Sex'          , 'Female'         , 1, null                    )
,       ('Sex'          , 'Male'           , 2, null                    )
,       ('LandClass'    , 'Grass'          , 1, null                    )
,       ('LandClass'    , 'Forest'         , 2, null                    )
,       ('AnimalProduct', 'CowSheepGoat'   , 1, null                    )
,       ('AnimalProduct', 'Dairy'          , 2, null                    )
,       ('AnimalProduct', 'Pig'            , 3, null                    )
,       ('AnimalProduct', 'Poultry'        , 4, null                    )
,       ('Commodity'    , 'Maize'          , 1, 'Maize'                 )
,       ('Commodity'    , 'Wheat'          , 2, 'Wheat'                 )
,       ('Commodity'    , 'Rice'           , 3, 'Paddy rice'            )
,       ('Commodity'    , 'CerealsGrainNEC', 4, 'Cereals grain n.e.c.'  )
,       ('Commodity'    , 'OilCrop'        , 5, 'Oil seeds'             )
,       ('Commodity'    , 'Sugar'          , 6, 'Sugar cane, sugar beet')
;
