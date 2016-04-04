require_relative "bubble_sort"
require_relative "insertion_sort"
require_relative  "merge_sort"
require "benchmark"

module SortingSuite 


  class Bench 

    puts Benchmark.measure{SortingSuite::BubbleSort.new.sort(["d","c","b","a"])}
    puts Benchmark.measure{SortingSuite::InsertionSort.new.sort(["d","c","b","a"])}
    puts Benchmark.measure{SortingSuite::MergeSort.new.sort(["d","c","b","a"])}

  end
end



