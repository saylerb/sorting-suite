require "minitest/autorun"
require "minitest/pride"
require "../lib/merge_sort"


class MergeSortTest < Minitest::Test

  def test_that_merge_class_created
    sorter = SortingSuite::MergeSort.new
    assert_equal sorter.class, SortingSuite::MergeSort
  end
  
  def test_merge_sort
    sorter = SortingSuite::MergeSort.new
    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

    def generate_alpha_arr(start, finish)
    (start..finish).to_a.shuffle
  end

  def generate_num_arr(start, finish)
    (start..finish).to_a.shuffle
  end

  def test_that_merge_class_created
    sorter = SortingSuite::MergeSort.new
    assert_equal sorter.class, SortingSuite::MergeSort
  end
  
  def test_sort_a_short_array
    sorter = SortingSuite::MergeSort.new
    array = generate_alpha_arr("a","d")
    assert_equal array.sort, sorter.sort(array)
  end

  def test_that_it_can_sort_generated_arrays
    sorter = SortingSuite::MergeSort.new
    array = generate_alpha_arr("a","z")
    assert_equal array.sort, sorter.sort(array)
  end

  def test_that_it_can_take_an_empty_array
    sorter = SortingSuite::MergeSort.new
    array = [] 
    assert_equal [], sorter.sort(array)
  end

  def test_that_it_can_take_numbers
    sorter = SortingSuite::MergeSort.new
    array = generate_num_arr(1, 10)
    assert_equal array.sort, sorter.sort(array)
  end


  def test_that_it_can_handle_duplicates
    sorter = SortingSuite::MergeSort.new
    array = generate_alpha_arr("a", "z")
    array.concat(generate_alpha_arr("a", "z"))
    assert_equal array.sort, sorter.sort(array)
    # puts array.inspect
  end

  def test_that_it_can_sort_reversed_arrays
    sorter = SortingSuite::MergeSort.new
    array = ("a".."z").to_a.reverse
    assert_equal array.sort, sorter.sort(array)
  end


  def test_that_it_can_sort_generated_arrays
    sorter = SortingSuite::MergeSort.new
    array = ("a".."g").to_a.shuffle
    assert_equal ("a".."g").to_a, sorter.sort(array)
  end

end



