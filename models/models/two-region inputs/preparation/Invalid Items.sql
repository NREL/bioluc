set search_path to luc, public, pg_catalog;


create view "Invalid Items" as
  select *
    from "Raw Crop Categories"
    where "FAO crops" not in (
      select "item"
        from "Raw Production - Crops"
    )
;