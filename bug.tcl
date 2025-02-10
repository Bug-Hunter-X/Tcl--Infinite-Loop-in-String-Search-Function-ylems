proc count_occurrences {haystack needle} { 
  set count 0
  while {[string first $needle $haystack] != -1} {
    incr count
    set haystack [string range $haystack [expr {[string first $needle $haystack] + [string length $needle]}] end]
  }
  return $count
}

puts [count_occurrences "This is a test string" "is"]