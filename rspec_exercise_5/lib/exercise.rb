

                #   APP ACADEMY
                #   RSPEC EXERCISE 5

def zip(*arr)
    arrays = []
    arr.each { |array| arrays << array }
    if arrays.length == 1
        return arrays[0]
    elsif arrays[2]
        arrays[0].zip(arrays[1], arrays[2])
    else arrays[0].zip(arrays[1])
    end
end
