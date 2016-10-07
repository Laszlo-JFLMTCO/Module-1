require 'pry'

class MergeSort
    def sort(unsorted_list)
        unsorted_list_downloop = []
        unsorted_list_downloop[0] = unsorted_list
        level = 0
        middle_point = unsorted_list_downloop[0].size / 2 - 1
        begin
            level = level + 1
            (1..2**(level-1)).each do
                unsorted_list_downloop << unsorted_list_downloop[0][0..middle_point]
                unsorted_list_downloop << unsorted_list_downloop[0][middle_point+1..unsorted_list_downloop[0].size-1]
                unsorted_list_downloop.shift
            end
            middle_point = unsorted_list_downloop[0].size / 2 - 1
        end while middle_point > 0
        
        sorted_list = unsorted_list_downloop
        sorted_list.each do |i|
            if i.size > 1
                if i[0] > i[1]
                    i[0], i[1] = i[1], i[0]
                end
            end
        end
        unsorted_list_downloop = sorted_list
        sorted_list = []
        while unsorted_list_downloop.size > 1
            sorted_list << []
            temp_first_list = unsorted_list_downloop[0]
            temp_second_list = unsorted_list_downloop[1]
            while (temp_first_list.size > 0) and (temp_second_list.size > 0)
                    if temp_first_list[0] <= temp_second_list[0]
                        sorted_list[0] << temp_first_list[0]
                        temp_first_list.shift
                    else
                        sorted_list[0] << temp_second_list[0]
                        temp_second_list.shift
                    end
            end
            while temp_first_list.size > 0
                sorted_list[0] << temp_first_list[0]
                temp_first_list.shift
            end
            while temp_second_list.size > 0
                sorted_list[0] << temp_second_list[0]
                temp_second_list.shift
            end
            while (unsorted_list_downloop[0].size == 0) and (unsorted_list_downloop.size > 1)
                #binding.pry
                unsorted_list_downloop.shift
            end
        end

        puts "#{unsorted_list}"
        puts "=> #{sorted_list}"
    end
end

sorter = MergeSort.new
sorter.sort(["d", "b", "a", "c"])