module SortingSuite
  class BubbleSort

    def sort(array)
      new_array = array
      loop do 
        swap = false
        (1...array.length).each do |index|
          if new_array[index-1] > new_array[index]
            new_array[index - 1], new_array[index] = new_array[index] , new_array[index - 1]
            swap = true
          end
        end
        break unless swap
      end
      new_array
    end
  end
end




