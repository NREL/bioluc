#!/usr/bin/gawk -f


BEGIN {
  FS = ","
  OFS = "\t"
  print "copy luc.\"Raw Population\" from stdin;"
}


FNR > 1 && NF == 5 {
  gsub("\"", "")
  country = $1
  variable = $2
  variant = $3
  year = $4
  value = $5
  print variant, country, year, value * 1000
}


END {
  print "\\."
  print ""
}
