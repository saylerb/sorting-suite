
class InsertionSort

  def sort(array)
    puts "================================================================================"
    puts "Sorting #{array}..."
    

    # Deep copy of array

    unsorted_array = array.map { |e| e.dup } 
    puts unsorted_array
    new_array = []


    stop = array.length+1
    puts "array length #{array.length}"
    puts "stop: #{stop}"

    (1..stop).each do |i|
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
        (0..array.length).each do |index|
          puts "Inner Loop: #{index}"
          puts "Array length: #{array.length}"

          if unsorted_array.nil? || new_array.nil?
            break
          elsif unsorted_array[0] < new_array[index]
            insert = true
            puts "Inner Loop #{index}: adding '#{unsorted_array[0]}' to #{new_array} at #{index}"
            new_array.insert(index, unsorted_array[0])
            unsorted_array.shift

            puts "New array: #{new_array}"
            puts "Unsorted array: #{unsorted_array}"
            break
          else
            puts "not less than"
          end
        end
        unless insert
          puts "No inserts, appending #{unsorted_array[0]}"
          new_array.push(unsorted_array[0])
        end
      end
    end

    puts "sorted array: #{new_array}"
    new_array
  end

end


