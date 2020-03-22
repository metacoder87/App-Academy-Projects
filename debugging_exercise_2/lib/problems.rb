# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def prime?(num)
    (2...num).none? { |div| num % div == 0 }
end

def largest_prime_factor(num)
    divs = (2..num).select { |div| num % div == 0 && prime?(div) }
    divs.max
end

def unique_chars?(str)
    str == str.split('').uniq.join('')
end

def ndx(arr, char)
    ndxs = []
    arr.each_with_index { |ele, i| ele == char ? ndxs << i : nil }
    ndxs
end

def dupe_indices(arr)
    hash = Hash.new()
    arr.each { |ele| ndx(arr, ele).length > 1 ? hash[ele] = ndx(arr, ele) : nil }
    hash
end

def ana_array(arr_1, arr_2)
    ele_counts(arr_1) == ele_counts(arr_2)
end

def ele_counts(arr)
    hash = Hash.new()
    arr.each { |ele| hash[ele] = arr.count(ele) }
    hash
end
