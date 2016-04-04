require "./lib/bubble_sort"
require "./lib/insertion_sort"
require "./lib/merge_sort"
require "./lib/benchmark"


benchmark = SortingSuite::Benchmark.new
puts benchmark.time(SortingSuite::InsertionSort, [3,3,4,5,1])
