set search_path to luc, public, pg_catalog;


create or replace view "Conversion Yield" as
  select "Region", "Crop Element", "Year", i."Production [Gg/yr]" / o."Production [Gg/yr]" as "Inverse Yield"
    from "Products Production" o
    inner join "Crop Production" i
      using ("Region", "Crop Element", "Year")
;