#!/usr/bin/gawk -f


BEGIN {
  FS = "\t"
  OFS = "\t"
  print "copy luc.\"Raw Food Balance Sheets\" from stdin;"
}


FNR > 1 {
  gsub("$", "")
  gsub("\t\t", "\t\\N\t")
  gsub("\t\t", "\t\\N\t")
  gsub("\t$", "\t\\N")
  print $0
}


END {
  print "\\."
  print ""
}
