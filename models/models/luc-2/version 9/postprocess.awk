#!/usr/bin/gawk -f

BEGIN {
  FS = ","
  OFS = ","
##print "Run", "Module", "Variable Name", "Subscript 1", "Subscript 2", "Year", "Value"
}

FNR == 1 {
  gsub("\r", "")
  for (i = 2; i <= NF; ++i)
    year[i] = $i
}

FNR > 1 && !/^"/ {
  gsub("\r", "")
  variable = $1
  i = match(variable, "\\[")
  j = match(variable, ",")
  k = match(variable, "]")
  if (i == 0) {
    subscript1 = ""
    subscript2 = ""
  } else if (j == 0) {
    subscript1 = substr(variable, i + 1, k - i - 1)
    subscript2 = ""
    variable = substr(variable, 1, i - 1)
  } else {
    subscript1 = substr(variable, i + 1, j - i - 1)
    subscript2 = substr(variable, j + 1, k - j - 1)
    variable = substr(variable, 1, i - 1)
  }
  i = match(variable, "\\.")
  module = substr(variable, 1, i - 1)
  variable = substr(variable, i + 1)
  for (i = 2; i <= NF; ++i)
    print run, module, variable, subscript1, subscript2, year[i], $i
}

FNR > 1 && /^"/ {
  gsub("\r", "")
  gsub("\"", "")
  variable = $1 "," $2
  i = match(variable, "\\[")
  j = match(variable, ",")
  k = match(variable, "]")
  if (i == 0) {
    subscript1 = ""
    subscript2 = ""
  } else if (j == 0) {
    subscript1 = substr(variable, i + 1, k - i - 1)
    subscript2 = ""
    variable = substr(variable, 1, i - 1)
  } else {
    subscript1 = substr(variable, i + 1, j - i - 1)
    subscript2 = substr(variable, j + 1, k - j - 1)
    variable = substr(variable, 1, i - 1)
  }
  i = match(variable, "\\.")
  module = substr(variable, 1, i - 1)
  variable = substr(variable, i + 1)
  for (i = 3; i <= NF; ++i)
    print run, module, variable, subscript1, subscript2, year[i-1], $i
}
