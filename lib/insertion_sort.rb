
class BubbleSort

  def sort(array)
    puts "================================================================================"
    puts "Sorting #{array}..."
    new_array = array
    stop = array.length-1
    loop do 
      swap = false
      puts "Outer: #{new_array.inspect}"
      (1..stop).each do |index|
        if new_array[index-1] > new_array[index]
          #puts ""
          puts "Inner #{index}: #{new_array} swapping #{new_array[index-1]} with #{new_array[index]}..."
          #puts ""
          new_array[index - 1], new_array[index] = new_array[index] , new_array[index - 1]
          swap = true
        else
          puts "Inner #{index}: #{new_array} nothing to swap."
        end
      end
      stop -= 1
      if not swap
        puts "Breaking out of loop"
        break
      end
    end

    puts "Sorted array: #{new_array}"
    new_array
  end

end








# sorter = BubbleSort.new
# array = ("a".."g").to_a.shuffle
# sorter.sort(array)
