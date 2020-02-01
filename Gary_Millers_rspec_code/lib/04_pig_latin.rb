# translates a string into pig-latin.
def translate(str)
    vowel = "aeiou"
    crr = []
        consonant = "bcdfghjklmnpqrstvwxyz"
            arr = str.split(" ")
                arr.each do |word|
                        if vowel.include?(word[0])
                            crr << word + "ay"
                        elsif word[0] == "q" && word[1] == "u"
                            brr = word.split("")
                            ele = brr.shift(2)
                            brr.push(ele)
                            translation1 = brr.join("") + "ay"
                            crr << translation1
                        elsif consonant.include?(word[0]) && vowel.include?(word[1]) 
                            brr = word.split("")
                            ele = brr.shift(1)
                            brr.push(ele)
                            translation2 = brr.join("") + "ay"
                            crr << translation2
                        elsif word[1] == "q" && word[2] == "u"
                            brr = word.split("")
                            ele = brr.shift(3)
                            brr.push(ele)
                            translation3 = brr.join("") + "ay"
                            crr << translation3
                        elsif consonant.include?(word[0]) && consonant.include?(word[1]) && vowel.include?(word[2])
                            brr = word.split("")
                            ele = brr.shift(2)
                            brr.push(ele)
                            translation4 = brr.join("") + "ay"
                            crr << translation4
                        elsif consonant.include?(word[0]) && consonant.include?(word[1]) && consonant.include?(word[2])
                            brr = word.split("")
                            ele = brr.shift(3)
                            brr.push(ele)
                            translation5 = brr.join("") + "ay"
                            crr << translation5
                        else return "not a string"
                        end
                    end
    return crr.join(" ")
end



            # meta_coder (Gary Miller) =)
            #gmiller052611@gmail.com