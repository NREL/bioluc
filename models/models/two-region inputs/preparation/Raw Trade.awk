#!/usr/bin/gawk -f


BEGIN {
  FS = "\t"
  OFS = "\t"
  print "copy luc.\"Raw Trade\" from stdin;"
}


FNR == 1 {
  for (i = 7; i <= NF; ++i)
    year[i] =$i
}


FNR > 1 {
  countries = $1
  countryCodes = $2
  item = $3
  itemCodes = $4
  element = $5
  elementCodes = $6
  for (i = 7; i <= NF; ++i)
    print countries, countryCodes, item, itemCodes, element, elementCodes, year[i], $i
}


END {
  print "\\."
  print ""
}
