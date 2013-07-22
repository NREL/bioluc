set search_path to model, public, pg_catalog;



-- FIX variable constraints on sources table

select xmlroot(xmlelement(name html,
  xmlelement(name body,
    (
      select xmlagg(
        xmlelement(name div,
          xmlelement(name h1, 'Model: ' || "Revision Title" || ' (Rev ' || "Revision" || ')'), -- || coalesce(': ' || "Revision Description", '')),
          (
            select xmlagg(
              xmlelement(name div,
                xmlelement(name h2, 'Module: ' || "Module"), -- || coalesce(': ' || "Module Description", '')),
                (
                  select xmlagg(
                    xmlelement(name div,
                      xmlelement(name h3, 'Sector: ' || "Sector"), -- || coalesce(': ' || "Sector Description", '')),
                      xmlelement(name table, xmlattributes('all' as rules),
                        xmlelement(name tr,
                          xmlelement(name th, 'Variable Name'),
                          xmlelement(name th, 'Value'),
                          xmlelement(name th, 'Definition'),
                          xmlelement(name th, 'Type'),
                          xmlelement(name th, 'Source'),
                          xmlelement(name th, 'Notes'),
                          xmlelement(name th, 'Comment'),
                          xmlelement(name th, 'Other'),
                          xmlelement(name th, 'Reference'),
                          xmlelement(name th, 'Annotation'),
                          xmlelement(name th, 'Data Quality'),
                          xmlelement(name th, 'Editor'),
                          xmlelement(name th, 'Needs Scrutiny')
                        ),
                        (
                          select xmlagg(
                            xmlelement(name tr, xmlattributes('top' as valign),
                              xmlelement(name td, "Variable Name"),
                              xmlelement(name td, xmlattributes('center' as align),
                                (
                                  select
                                    case
                                      when exists (select "Variable Name" from constants where rev."Revision" = "Revision" and var."Variable Name" = "Variable Name" and "Subscript 1" = '' and "Subscript 2" = '')
                                        then xmlelement(name span, (select "Constant Value" from constants where rev."Revision" = "Revision" and var."Variable Name" = "Variable Name"))
                                      when exists (select "Variable Name" from constants where rev."Revision" = "Revision" and var."Variable Name" = "Variable Name" and "Subscript 1" <> '' and "Subscript 2" = '')
                                        then xmlelement(name table, xmlattributes('all' as rules),
                                        -- move subscript metadata into inner table, use friendly labels
                                          xmlelement(name tr,
                                            (
                                              select xmlagg(
                                                xmlelement(name th, "Subscript Element")
                                              ) from (
                                                select "Subscript Element"
                                                  from subscripts
                                                  natural join arrays
                                                  where rev."Revision" = "Revision"
                                                    and "Subscript Dimension" = "Subscript 1 Dimension"
                                                    and var."Variable Name" = "Variable Name"
                                                  order by "Subscript Index"
                                              ) sub
                                            )
                                          ),
                                          xmlelement(name tr,
                                            (
                                              select xmlagg(
                                                xmlelement(name td, "Constant Value")
                                              ) from (
                                                select "Constant Value"
                                                  from constants
                                                  natural join subscripts
                                                  natural join arrays
                                                  where rev."Revision" = "Revision"
                                                    and "Subscript Dimension" = "Subscript 1 Dimension"
                                                    and "Subscript Element" = "Subscript 1"
                                                    and var."Variable Name" = "Variable Name"
                                                  order by "Subscript Index"
                                              ) val
                                            )
                                          )
                                        )
                                      when exists (select "Variable Name" from constants where rev."Revision" = "Revision" and var."Variable Name" = "Variable Name" and "Subscript 1" <> '' and "Subscript 2" <> '')
                                        then xmlelement(name table, xmlattributes('all' as rules),
                                        -- move subscript metadata into inner table, use friendly labels
                                          xmlelement(name tr,
                                            xmlelement(name th, ''),
                                            (
                                              select xmlagg(
                                                xmlelement(name th, "Subscript Element")
                                              ) from (
                                                select "Subscript Element"
                                                  from subscripts
                                                  natural join arrays
                                                  where rev."Revision" = "Revision"
                                                    and "Subscript Dimension" = "Subscript 2 Dimension"
                                                    and var."Variable Name" = "Variable Name"
                                                  order by "Subscript Index"
                                              ) sub2
                                            )
                                          ),
                                          (
                                            select xmlagg(
                                              xmlelement(name tr,
                                                xmlelement(name th, "Subscript Element"),
                                                (
                                                  select xmlagg(
                                                    xmlelement(name td, "Constant Value")
                                                  ) from (
                                                    select "Constant Value"
                                                      from constants
                                                      natural join subscripts
                                                      natural join arrays
                                                      where rev."Revision" = "Revision"
                                                        and "Subscript Dimension" = "Subscript 2 Dimension"
                                                        and "Subscript Element" = "Subscript 2"
                                                        and sub1."Subscript Element" = "Subscript 1"
                                                        and var."Variable Name" = "Variable Name"
                                                      order by "Subscript Index"
                                                  ) val
                                                )
                                              )
                                            ) from (
                                              select "Subscript Element"
                                                from subscripts
                                                natural join arrays
                                                where rev."Revision" = "Revision"
                                                  and "Subscript Dimension" = "Subscript 1 Dimension"
                                                  and var."Variable Name" = "Variable Name"
                                            ) sub1
                                          )
                                        )
                                      else
                                        (
                                          select xmlagg(
                                            xmlelement(name div,
                                              xmlelement(name h4, "X"),
                                    case
                                      when exists (select "Variable Name" from graphs where rev."Revision" = "Revision" and var."Variable Name" = "Variable Name" and "Subscript 1" = '' and "Subscript 2" = '')
                                        then xmlelement(name span, (select "Y" from graphs where rev."Revision" = "Revision" and var."Variable Name" = "Variable Name" and gra."Index" = "Index"))
                                      when exists (select "Variable Name" from graphs where rev."Revision" = "Revision" and var."Variable Name" = "Variable Name" and "Subscript 1" <> '' and "Subscript 2" = '')
                                        then xmlelement(name table, xmlattributes('all' as rules),
                                        -- move subscript metadata into inner table, use friendly labels
                                          xmlelement(name tr,
                                            (
                                              select xmlagg(
                                                xmlelement(name th, "Subscript Element")
                                              ) from (
                                                select "Subscript Element"
                                                  from subscripts
                                                  natural join arrays
                                                  where rev."Revision" = "Revision"
                                                    and "Subscript Dimension" = "Subscript 1 Dimension"
                                                    and var."Variable Name" = "Variable Name"
                                                  order by "Subscript Index"
                                              ) sub
                                            )
                                          ),
                                          xmlelement(name tr,
                                            (
                                              select xmlagg(
                                                xmlelement(name td, "Y")
                                              ) from (
                                                select "Y"
                                                  from graphs
                                                  natural join subscripts
                                                  natural join arrays
                                                  where rev."Revision" = "Revision"
                                                    and "Subscript Dimension" = "Subscript 1 Dimension"
                                                    and "Subscript Element" = "Subscript 1"
                                                    and var."Variable Name" = "Variable Name"
                                                    and gra."Index" = "Index"
                                                  order by "Subscript Index"
                                              ) val
                                            )
                                          )
                                        )
                                      when exists (select "Variable Name" from graphs where rev."Revision" = "Revision" and var."Variable Name" = "Variable Name" and "Subscript 1" <> '' and "Subscript 2" <> '')
                                        then xmlelement(name table, xmlattributes('all' as rules),
                                        -- move subscript metadata into inner table, use friendly labels
                                          xmlelement(name tr,
                                            xmlelement(name th, ''),
                                            (
                                              select xmlagg(
                                                xmlelement(name th, "Subscript Element")
                                              ) from (
                                                select "Subscript Element"
                                                  from subscripts
                                                  natural join arrays
                                                  where rev."Revision" = "Revision"
                                                    and "Subscript Dimension" = "Subscript 2 Dimension"
                                                    and var."Variable Name" = "Variable Name"
                                                  order by "Subscript Index"
                                              ) sub2
                                            )
                                          ),
                                          (
                                            select xmlagg(
                                              xmlelement(name tr,
                                                xmlelement(name th, "Subscript Element"),
                                                (
                                                  select xmlagg(
                                                    xmlelement(name td, "Y")
                                                  ) from (
                                                    select "Y"
                                                      from graphs
                                                      natural join subscripts
                                                      natural join arrays
                                                      where rev."Revision" = "Revision"
                                                        and "Subscript Dimension" = "Subscript 2 Dimension"
                                                        and "Subscript Element" = "Subscript 2"
                                                        and sub1."Subscript Element" = "Subscript 1"
                                                        and var."Variable Name" = "Variable Name"
                                                        and gra."Index" = "Index"
                                                      order by "Subscript Index"
                                                  ) val
                                                )
                                              )
                                            ) from (
                                              select "Subscript Element"
                                                from subscripts
                                                natural join arrays
                                                where rev."Revision" = "Revision"
                                                  and "Subscript Dimension" = "Subscript 1 Dimension"
                                                  and var."Variable Name" = "Variable Name"
                                            ) sub1
                                          )
                                        )
                                      else
                                        xmlelement(name strong, 'ERROR')
                                    end
                                        )
                                          ) from (
                                            select distinct "Index", "X"
                                              from graphs
                                              where rev."Revision" = "Revision"
                                                and var."Variable Name" = "Variable Name"
                                              order by "Index"
                                          ) gra
                                        )
                                    end
                                ),
                                xmlelement(name em, ' ' || "Units")
                              ),
                              xmlelement(name td, "Definition"),
                              xmlelement(name td, "Type"),
                              xmlelement(name td, "Source"),
                              xmlelement(name td, "Notes"),
                              xmlelement(name td, "Comment"),
                              xmlelement(name td, "Other"),
                              xmlelement(name td, "Reference"),
                              xmlelement(name td, "Annotation"),
                              xmlelement(name td, "Data Quality"),
                              xmlelement(name td, "Editor"),
                              xmlelement(name td, "Needs Scrutiny")
                            )
                          ) from (
                            select
                                "Variable Name",
                                max("Units") as "Units",
                                max("Definition") as "Definition",
                                max("Type") as "Type",
                                max("Source") as "Source",
                                max("Notes") as "Notes",
                                max("Comment") as "Comment",
                                max("Other") as "Other",
                                "Reference",
                                "Annotation",
                                "Data Quality",
                                "Editor",
                                "Needs Scrutiny"
                              from variables
                              natural join sources
                              where rev."Revision" = "Revision"
                                and mod."Module" = "Module"
                                and sec."Sector" = "Sector"
                              group by "Variable Name", "Reference", "Annotation", "Data Quality", "Editor", "Needs Scrutiny"
                              order by "Variable Name"
                            ) var
                        )
                      )
                    )
                  ) from (
                    select distinct "Sector", "Sector Description"
                      from sectors
                      natural join sources
                      where rev."Revision" = "Revision"
                        and mod."Module" = "Module"
                      order by "Sector"
                  ) sec
                )
              )
            ) from (
              select distinct "Module", "Module Description"
                from modules
                natural join sources
                where rev."Revision" = "Revision"
                order by "Module"
            ) mod
          )
        )
      ) from (
        select distinct "Revision", "Revision Title", "Revision Description"
          from revisions
          natural join sources
          order by "Revision"
      ) rev
    )
  )
), version '1.0', standalone yes) as "BSM Parameters"


