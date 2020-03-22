
    #Part_1

def select_even_nums(arr)
    arr.select(&:even?)
end

def reject_puppies(arr)
    arr.reject { |hash| hash['age'] <= 2 }
end

def count_positive_subarrays(arr)
    arr.count { |brr| brr.inject(:+) > 0 } 
end
