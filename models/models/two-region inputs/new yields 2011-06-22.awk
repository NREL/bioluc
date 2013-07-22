#!/usr/bin/gawk -f

BEGIN {
  FS = "\t"
  OFS = ","
}

/Year/ {
  if (FNR == 1)
    region = "ROW"
  else
    region = "USA"
}


FNR == 1 {
  for (i = 1; i <= NF; ++i)
    header[i] = $i
  print "create table luc.new_yields ("
  print "  year int not null"
  print ", region varchar(3) not null"
  print ", variable varchar(50) not null"
  print ", value real not null"
  print ");"
}

FNR > 1 && !/Year/ {
  year = $1
  for (i = 2; i <= NF; ++i)
    print "insert into luc.new_yields values(" year, "'" region "'", "'" header[i] "'", $i ");"
}
