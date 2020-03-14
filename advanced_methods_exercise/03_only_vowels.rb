# Write a method, `only_vowels?(str)`, that accepts a string as an arg.
# The method should return true if the string contains only vowels.
# The method should return false otherwise.


def only_vowels?(str)
    no_cons = true
    cons = 'bcdfghjklmnpqrstvwxz'
    str.each_char { |char| cons.include?(char) ? no_cons = false : true } 
    no_cons
end 

p only_vowels?("aaoeee")  # => true
p only_vowels?("iou")     # => true
p only_vowels?("cat")     # => false
p only_vowels?("over")    # => false


