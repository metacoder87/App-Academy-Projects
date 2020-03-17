#Part_2
#RSPEC_Excercise_2

def palindrome?(str)
    rev = []
    str.split("").reverse_each { |ele| rev << ele }
    if str == rev.join("")
        true
    else false
    end
end
