set search_path to luc, public, pg_catalog;


create or replace view "Production Comparison" as
  select
      "Region"
    , "Year"
    , "Crop Element"
    , c."Production [Gg/yr]" as "ProdStat Production [Gg/yr]"
    , p."Production [Gg/yr]" as "FBS Production [Gg/yr]"
    from "Crop Production" c
    inner join "Products Production" p
      using ("Region", "Year", "Crop Element")
order by 1, 2, 3
;