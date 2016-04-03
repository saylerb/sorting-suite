require "minitest/autorun"
require "minitest/pride"
require "../lib/bubble_sort"

class BubbleSortTest < Minitest::Test
  

  def test_that_bubble_class_created
    sorter = BubbleSort.new
    assert_equal sorter.class, BubbleSort
  end
  
  def test_bubble_sort
    sorter = BubbleSort.new
    puts 'sorting: ["d", "b", "a", "c"]'
    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

  def test_that_it_can_sort_generated_arrays
    
    sorter = BubbleSort.new
    array = ("a".."z").to_a.shuffle
    assert_equal ("a".."z").to_a, sorter.sort(array)
  end

end



