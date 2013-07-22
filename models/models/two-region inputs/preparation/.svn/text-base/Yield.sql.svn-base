set search_path to luc, public, pg_catalog;


create view "Yield" as
  select "Region", "Crop Element", "Year", "Production [Gg/yr]" / "Area Harvested [Ha]" as "Yield [Gg/yr/Ha]"
    from "Crop Production"
    natural join "Area Harvested"
;
