def echo(str)
    return str
end

def shout(str)
    return str.upcase
end

def repeat(str, num = 2)
    return [str] * num * " "
end

def start_of_word(str, num)
    return str[0..(num - 1)]
end

def first_word(str)
    idx = str.index(' ')
    return str[0...idx]
end

def titleize(str)
    brr = []
    lil_words = ["a", "about", "above", "after", "again", "against",
     "all", "am", "an", "and", "any", "are", "as", "at", "be", "because",
     "been", "before", "being", "below", "between", "both", "but", "by",
     "could", "did", "do", "does", "doing", "down", "during", "each", "few",
     "for", "from", "further", "had", "has", "have", "having", "he", "he'd",
     "he'll", "he's", "her", "here", "here's", "hers", "herself", "him",
     "himself", "his", "how", "how's", "i", "i'd", "i'll", "i'm", "i've",
     "if", "in", "into", "is", "it", "it's", "its", "itself", "let's", "me",
     "more", "most", "my", "myself", "nor", "of", "on", "once", "only", "or",
     "other", "ought", "our", "ours", "ourselves", "out", "over", "own", "same",
     "she", "she'd", "she'll", "she's", "should", "so", "some", "such", "than",
     "that", "that's", "the", "their", "theirs", "them", "themselves", "then",
     "there", "there's", "these", "they", "they'd", "they'll", "they're",
     "they've", "this", "those", "through", "to", "too", "under", "until", "up",
     "very", "was", "we", "we'd", "we'll", "we're", "we've", "were", "what",
     "what's", "when", "when's", "where", "where's", "which", "while", "who",
     "who's", "whom", "why", "why's", "with", "would", "you", "you'd", "you'll",
     "you're", "you've", "your", "yours", "yourself", "yourselves"]
    arr = str.split()
       arr.each do |word|
            if lil_words.include?(word)
                brr << word.downcase
            else brr << word.capitalize
            end
        end
        brr[0] = brr[0].capitalize
    return brr.join(" ")
end








            # meta_coder (Gary Miller) =)
            #gmiller052611@gmail.com