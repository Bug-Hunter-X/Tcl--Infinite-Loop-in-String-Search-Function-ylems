# Tcl String Search Bug
This repository demonstrates a subtle bug in a Tcl procedure designed to count the occurrences of a substring within a string. The bug arises from the improper handling of empty search strings, leading to an infinite loop.  The solution showcases how to handle this edge case gracefully.

## Bug Description
The `count_occurrences` procedure uses `string first` to locate the needle within the haystack. However, if `needle` is an empty string, `string first` will always return 0, causing the loop to continue indefinitely. 

## Solution
The solution adds a check to prevent the infinite loop by exiting early if the needle is empty.  This approach ensures that the function works correctly for all input strings.