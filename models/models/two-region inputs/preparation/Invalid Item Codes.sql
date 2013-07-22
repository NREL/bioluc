set search_path to luc, public, pg_catalog;


create view "Invalid Item Codes" as
  select *
    from "Raw Crop Categories"
    where "FAO crop item code" not in (
      select "item codes"
        from "Raw Production - Crops"
    )
;