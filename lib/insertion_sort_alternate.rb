class InsertionSort

  def sort(array)
    puts "================================================================================"
    puts "Sorting #{array}..."
    
    # Deep copy of array

    unsorted_array = array.map { |e| e.dup } 
    new_array = []


    stop = unsorted_array.length
    puts "array length #{array.length}"
    puts "stop: #{stop}"

    (0..stop-1).each do |i|
      insert = false
      puts "Outer Loop #{i}"
      puts "================================================================================"
      if new_array.length == 0
        puts "Adding #{unsorted_array[0]} to new array."
        new_array << unsorted_array[0] 
        unsorted_array.shift
        puts "New array: #{new_array}"
        puts "Unsorted array: #{unsorted_array}"
      else
        (0..new_array.length-1).each do |index|
          puts "Inner Loop: #{index}"
          puts "Array length: #{array.length}"
# require "pry"; binding.pry
          if unsorted_array[0] < new_array[index]
            insert = true
            puts "Inner Loop #{index}: adding '#{unsorted_array[0]}' to #{new_array} at #{index}"
            new_array.insert(index, unsorted_array[0])
            unsorted_array.shift

            puts "New array: #{new_array}"
            puts "Unsorted array: #{unsorted_array}"
            break
          end

        end
        unless insert
          puts "No inserts, appending #{unsorted_array[0]}"
          new_array.push(unsorted_array[0])
          break
        end
      end
    end

    puts "sorted array: #{new_array}"
    new_array
  end

end

sorter = InsertionSort.new
puts 'sorting: ["d", "b", "a", "c"]'
sorter.sort(["d", "b", "a", "c"]) 

sorter2 = InsertionSort.new
array = ("a".."g").to_a.shuffle
puts "sorting #{array}"
sorter2.sort(array)
 
