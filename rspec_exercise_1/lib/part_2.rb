#RSPEC Exercise_1
#Part_2

def hipsterfy(str)
    arr = str.split('')
    vowel = 'aeiou'
    if arr.none? { |char| vowel.include?(char) }
        return str
    end
    i = str.chars.rindex { |char| vowel.include?(char) }
    arr.delete_at(i)
    arr.join('')
end

def vowel_counts(str)
    hash = Hash.new()
    arr = str.downcase.chars
    arr.each do |char| 
        if 'aeiou'.include?(char) 
            hash[char] = arr.count(char)
        end
    end
    hash
end

