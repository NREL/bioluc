set search_path to luc, public, pg_catalog;


create view "Milling Factors" as
  select
      "Region"
    , "Crop Element"
    , "Year"
    , "Quantity [Gg/yr]"
    , "Production [Gg/yr]"
    , "Quantity [Gg/yr]" / "Production [Gg/yr]" as "Milling Factor"
    from "Crop Disposition"
    natural join "Crop Production"
    where "Disposition" = 'Production'
  order by 1, 2, 3
