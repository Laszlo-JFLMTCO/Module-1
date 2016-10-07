class BubbleSort
    def sort(what_to_sort)
        n = what_to_sort.size
        (n-1).times do |i|
            (n-1).times do |j|
                previous = what_to_sort[j]
                current = what_to_sort[j + 1]
                if current < previous then
                    swap = previous
                    what_to_sort[j] = current
                    what_to_sort[j+1] = swap
                end
            end
        end
        puts "=> #{what_to_sort}"
    end
end
sorter = BubbleSort.new
sorter.sort(["d", "b", "a", "c"])