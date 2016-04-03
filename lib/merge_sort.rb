class MergeSort
  def sort(array)
   # base case:an array of less than 2
    if array.length < 2
      array
    else
      midpoint = array.length/2
      sorted_left = sort(array[0...midpoint])
      sorted_right = sort(array[midpoint...array.length])

      merge(sorted_left, sorted_right)
    end
    
  end

  def merge(left, right)
    new_array = [] 
    while left.length > 0 && right.length > 0 
      if left.first < right.first 
        new_array.concat(left.shift)
        puts "new_array: #{new_array}"
      else
        new_array.concat(right.shift)
        puts "new_array: #{new_array}"
      end
      
    end
    puts "new_array: #{new_array.inspect}"
  end




end


sorter = MergeSort.new
array = ("a".."g").to_a.shuffle
puts "sorting #{array}"
puts "sorted array: #{sorter.sort(array).inspect}"

