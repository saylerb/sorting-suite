require "minitest/autorun"
require "minitest/pride"
require "../lib/bubble_sort"

class BubbleSortTest < Minitest::Test
  

  def generate_alpha_arr(start, finish)
    (start..finish).to_a.shuffle
  end

  def generate_num_arr(start, finish)
    (start..finish).to_a.shuffle
  end


  def test_that_bubble_class_created
    sorter = BubbleSort.new
    assert_equal sorter.class, BubbleSort
  end
  
  def test_sort_a_short_array
    sorter = BubbleSort.new
    array = generate_alpha_arr("a","d")
    assert_equal array.sort, sorter.sort(array)
  end

  def test_that_it_can_sort_generated_arrays
    sorter = BubbleSort.new
    array = generate_alpha_arr("a","z")
    assert_equal array.sort, sorter.sort(array)
  end


  def test_that_it_can_take_an_empty_array
    sorter = BubbleSort.new
    array = [] 
    assert_equal [], sorter.sort(array)
  end

  def test_that_it_can_take_numbers
    sorter = BubbleSort.new
    array = generate_num_arr(1, 10)
    assert_equal array.sort, sorter.sort(array)
  end


  def test_that_it_can_handle_duplicates
    skip
    sorter = BubbleSort.new
    array = ("a".."z").to_a.shuffle
    array = [] 
    assert_equal [], sorter.sort(array)
  end

end



