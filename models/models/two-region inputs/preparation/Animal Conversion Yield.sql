set search_path to luc, public, pg_catalog;


create or replace view "Animal Conversion Yield" as
  select "Region", "Index", "Crop Element", "Year", i."Production [Gg/yr]" / o."Production [Gg/yr]" as "Inverse Yield"
    from "Animal Production" o
    inner join "Crop Production" i
      using ("Region", "Year")
    where "Index" = 'CowSheepGoat'
      and "Crop Element" = 'Forage crop'
;