require "minitest/autorun"
require "minitest/pride"
require "./lib/merge_sort"
require "./test/test_helper"

class MergeSortTest < Minitest::Test
  include TestHelpers

  attr_reader :sorter
  def setup
    @sorter = SortingSuite::MergeSort.new
  end

  def test_that_merge_class_created
    assert_equal sorter.class, SortingSuite::MergeSort
  end

  def test_merge_sort
    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

  def test_that_merge_class_created
    assert_equal sorter.class, SortingSuite::MergeSort
  end

  def test_sort_a_short_array
    array = generate_alpha_arr("a","d")
    assert_equal array.sort, sorter.sort(array)
  end

  def test_that_it_can_sort_generated_arrays
    array = generate_alpha_arr("a","z")
    assert_equal array.sort, sorter.sort(array)
  end

  def test_that_it_can_take_an_empty_array
    array = []
    assert_equal [], sorter.sort(array)
  end

  def test_that_it_can_take_numbers
    array = generate_num_arr(1, 10)
    assert_equal array.sort, sorter.sort(array)
  end

  def test_that_it_can_handle_duplicates
    array = generate_alpha_arr("a", "z")
    array.concat(generate_alpha_arr("a", "z"))
    assert_equal array.sort, sorter.sort(array)
  end

  def test_that_it_can_sort_reversed_arrays
    array = ("a".."z").to_a.reverse
    assert_equal array.sort, sorter.sort(array)
  end

  def test_that_it_can_sort_generated_arrays
    array = ("a".."g").to_a.shuffle
    assert_equal ("a".."g").to_a, sorter.sort(array)
  end

end