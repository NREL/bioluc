#!/usr/bin/gawk -f


BEGIN {
  FS = "\t"
  OFS = "\t"
  print "copy luc.\"Item Correspondence\" from stdin;"
}


NF > 1 {
  fbs = $1
  for (i = 2; i <= NF; ++i)
    print $i, fbs
}


END {
  print "\\."
  print ""
}
