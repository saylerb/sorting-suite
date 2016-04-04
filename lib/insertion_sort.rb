module SortingSuite
  class InsertionSort

    def sort(array)
      
      unsorted_array = array.map { |element| element } 
      new_array = []

      while new_array.length < array.length
        insert = false

        new_array.unshift(unsorted_array.shift) if new_array.empty?

        new_array.each_index do |index|
          if unsorted_array[0] < new_array[index]
            new_array.insert(index, unsorted_array.shift)
            insert = true 
            break
          end

        end
        new_array.push(unsorted_array.shift) unless insert
      end
      new_array
    end
  end
end 
