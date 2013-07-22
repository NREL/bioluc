set search_path to luc, public, pg_catalog;


create view "Crop Elements" as
  select distinct
      "Crop Element No" as "Crop Element No"
    , "Crop element name" as "Crop Element"
  from "Raw Crop Categories"
order by 1
;
