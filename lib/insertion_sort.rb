class InsertionSort

  def sort(array)
    
    unsorted_array = array.map { |element| element } 
    new_array = []

    while new_array.length < array.length
      insert = false

      if new_array.length == 0
        new_array.unshift(unsorted_array.shift) 
      end
      new_array.each_index do |index|
        if unsorted_array[0] < new_array[index]
          new_array.insert(index, unsorted_array.shift)
          insert = true 
          break
        end
      end
      if not insert
        new_array.push(unsorted_array.shift)
      end
    end
    new_array
  end

end

 
