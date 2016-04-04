class MergeSort
  def sort(array)
   # base case:an array of less than 2

    return array if array.length <= 1
    
    midpoint = (array.size/2)
    left_sort = sort(array[0...midpoint])
    right_sort =  sort(array[midpoint..array.length])
    merge(left_sort, right_sort)

  end

  def merge(left, right)

    new_array = []

    until right.empty? && left.empty?
      if right.empty?
        new_array << left.shift 
      elsif left.empty? 
        new_array << right.shift
      elsif left.first < right.first
        new_array << left.shift
      else
        new_array << right.shift
      end

    end
    new_array
  end

end

sorter = MergeSort.new
array = ("a".."z").to_a.shuffle
puts "sorting #{array}"
puts "sorted array: #{sorter.sort(array).inspect}"
