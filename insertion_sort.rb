class InsertionSort
    def sort(unsorted_list)
        sorted_list = Array.new
        sorted_list[0] = unsorted_list[0]
        (1..unsorted_list.size-1).each do |i|
            j = -1
            greater = true
            begin
                j = j + 1
                if sorted_list[j] > unsorted_list[i] then
                    greater = false
                end
            end while (j < sorted_list.size-1) and (greater)
            if greater then
                sorted_list.insert(j+1, unsorted_list[i])
            else
                sorted_list.insert(j, unsorted_list[i])
            end
        end
        puts "#{unsorted_list}"
        puts "=> #{sorted_list}"
    end
end

sorter = InsertionSort.new
sorter.sort(["d", "b", "a", "c"])