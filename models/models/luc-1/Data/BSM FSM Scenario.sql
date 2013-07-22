select year as "Year", sum(value) as "Land Used for Cellulosic Energy Crops [acre/year]"
  from visual_fm.facts
  where metric_id = 12
    and use_id in ('H', 'P')
    and category_id in ('P', 'H')
    and case_id = 3
  group by year
order by 1
;