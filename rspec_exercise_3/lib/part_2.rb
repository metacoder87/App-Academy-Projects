
    #   APP ACADEMY
    #   RSPEC EXERCISE 3
    #   PART 2

def element_count(arr)
    hash = Hash.new(0)
    arr.each { |ele| hash[ele] += 1 }
    hash
end
