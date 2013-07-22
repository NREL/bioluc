set search_path to luc, public, pg_catalog;


create view "Invalid Item Correspondences" as
  select *
    from "Raw Crop Categories"
    where "FAO crop item code" not in (
      select "Production Item"
        from "Item Correspondence"
    )
;