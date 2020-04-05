
    #   APP ACADEMY
    #   RSPEC EXERCISE 3
    #   PART 2

def element_count(arr)
    hash = Hash.new(0)
    arr.each { |ele| hash[ele] += 1 }
    hash
end

def char_replace!(string, hash)
    string.each_char.with_index { |char, i| hash.include?(char) ? string[i] = hash[char] : char }
    string
end

def product_inject(arr)
    arr.inject(:*)
end
