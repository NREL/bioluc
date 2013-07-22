#!/usr/bin/gawk -f

BEGIN {
  FS = "\t"
  OFS = ","
}

FNR == 1 {
  for (i = 1; i <= NF; ++i)
    header[i] = $i
  print "create table luc.new_demands ("
  print "  year int not null"
  print ", region varchar(3) not null"
  print ", variable varchar(50) not null"
  print ", value real not null"
  print ");"
}

FNR > 1 {
  year = $1
  region = $2
  for (i = 3; i <= NF; ++i)
    print "insert into luc.new_demands values(" year, "'" region "'", "'" header[i] "'", $i ");"
}
