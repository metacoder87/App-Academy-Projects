
    #Part_2

def all_words_capitalized?(arr)
    arr.all? { |word| word.capitalize == word }
end

def no_valid_url?(arr)
    arr.none? { |url| url.end_with?('.com','.net','.io','.org') }
end
