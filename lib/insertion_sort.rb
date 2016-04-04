class InsertionSort

  def sort(array)
    
    unsorted_array = array.map { |e| e.dup } 
    new_array = []
    iterator = 0

    while new_array.length < array.length
      iterator += 1
      puts "Outer Loop #{iterator}"
      insert = false

      if new_array.length == 0
        puts "Creating new array!"
        new_array.unshift(unsorted_array.shift) 
        puts "new_array: #{new_array}"
      end
      new_array.each_index do |index|
        if unsorted_array[0] < new_array[index]
          puts "Adding to array..."
          new_array.insert(index, unsorted_array.shift)
          puts "new_array: #{new_array}"
          puts "unsorted: #{unsorted_array}"
          insert = true 
          break
        end
      end
      if not insert
        puts "appending..."
        new_array.push(unsorted_array.shift)
      end
    end
    new_array
  end

end

sorter = InsertionSort.new
puts 'sorting: ["d", "b", "a", "c"]'
sorter.sort(["d", "b", "a", "c"]) 

sorter2 = InsertionSort.new
array = ("a".."z").to_a.shuffle
puts "sorting #{array}"
sorter2.sort(array)
 
