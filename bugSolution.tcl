proc count_occurrences {haystack needle} { 
  if {[string length $needle] == 0} { 
    return 0 
  }
  set count 0
  while {[string first $needle $haystack] != -1} {
    incr count
    set haystack [string range $haystack [expr {[string first $needle $haystack] + [string length $needle]}] end]
  }
  return $count
}

puts [count_occurrences "This is a test string" "is"]
puts [count_occurrences "This is a test string" ""]