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

def caesar_cipher(str, n)
    alph = 'abcdefghijklmnopqrstuvwxyz'
    alpha_arr = alph.chars
    arr = str.chars.map do |char|
        if alph.include?(char)
            i = alpha_arr.index(char) 
            new_alpha = alpha_arr.rotate(n)
            char = new_alpha[i]
        else char
        end
    end
    arr.join('')
end
