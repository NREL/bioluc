#!/usr/bin/gawk -f


BEGIN {
  FS = " "
  OFS = ","
}


/^: / {
  variable = $3
  units[variable] = ""
}


/^UNITS:/ {
  unit = $2
  units[variable] = unit
}


END {
  for (variable in units)
    if (units[variable] == "")
      print variable, gensub("^[^.]+\.", "", "g", variable)
}

