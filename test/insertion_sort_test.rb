require "minitest/autorun"
require "minitest/pride"
require "../lib/insertion_sort"

class InsertionSortTest < Minitest::Test
  

  def test_that_insertion_class_created
    sorter = InsertionSort.new
    assert_equal sorter.class, InsertionSort
  end
  
  def test_insertion_sort
    sorter = InsertionSort.new
    puts 'sorting: ["d", "b", "a", "c"]'
    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

  def test_that_it_can_sort_generated_arrays
    sorter = InsertionSort.new
    array = ("a".."z").to_a.shuffle
    assert_equal ("a".."z").to_a, sorter.sort(array)
  end

end



