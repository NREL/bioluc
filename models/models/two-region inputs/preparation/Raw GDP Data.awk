#!/usr/bin/gawk -f


BEGIN {
  FS = ","
  OFS = "\t"
  print "copy luc.\"Raw GDP\" from stdin;"
}


FNR > 1 && NF >= 3 {
  gsub("\"", "")
  country = $1
  year = $2
  value = $3
  print country, year, value
}


END {
  print "\\."
  print ""
}
