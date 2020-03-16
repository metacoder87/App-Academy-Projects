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
