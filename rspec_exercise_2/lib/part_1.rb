#Part_1
#RSPEC_Excercise_2

def partition(arr, num)
    lil = arr.select { |ele| ele < num }
    big = arr.select { |ele| ele >= num }
    parti = []
    parti << lil 
    parti << big
end

def merge(hash_1, hash_2)
    hash_1.merge(hash_2)
end

def censor(str, arr)
    upd = arr.map { |word| word.upcase }
    words = str.split(" ")
    words.each do |word| 
        if upd.include?(word.upcase)    
            word.split('').each_with_index { |char, i| 'AEIOUaeiou'.include?(char) ? word[i] = '*' : char }
        end
    end
    words.join(" ")
end

def power_of_two?(num)
    if Math.sqrt(num) == Integer.sqrt(num)
        true
    else false
    end
end
