#!/usr/bin/gawk -f


BEGIN {
  FS = "\t"
  OFS = "\t"
  print "copy luc.\"Raw Population\" from stdin;"
}


FNR == 1 {
  for (i = 7; i <= NF; ++i)
    year[i] = $i
}

FNR > 1 {
  gsub("\"", "")
  country = $1
  variable = $5
  variant = "PopSTAT"
  if (variable == "Total Population - Both sexes (1000)")
    for (i = 7; i <= NF; ++i) {
      value = $i
      print "PopSTAT", country, year[i], value * 1000
    }
}


END {
  print "\\."
  print ""
}
