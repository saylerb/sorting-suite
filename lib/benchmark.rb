require_relative "bubble_sort"
require_relative "insertion_sort"
require_relative  "merge_sort"
require "benchmark"

module SortingSuite
  class Benchmark

    def time(algorithm, array)
      start_time = Time.now
      sorter = algorithm.new(array)
      end_time = Time.now
      "Time elapsed #{calculate_time(start_time, stop_time)}"
    end


    def calculate_time(start, stop)
      time_elapsed = stop - start
      minutes = time_elapsed.to_i / 60
      seconds = time_elapsed.to_i % 60
      "#{minutes} minutes, #{seconds} seconds"
    end
  end
end

