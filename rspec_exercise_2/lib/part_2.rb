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

def substrings(str)
#    count = 1
    subs = []
#    while count <= str.length
#        subs << str.split('').first(count).join('')
#        count += 1
#        end
    (0...str.length).each do |start_i|
        (start_i...str.length).each do |end_i|
            subs << str[start_i..end_i]
        end
    end
    subs
end

def palindrome_substrings(str)
    substrings(str).keep_if { |sub| palindrome?(sub) && sub.length > 2 }
end
