# Debug this code to pass rspec! There are 3 mistakes to fix.

# Write a method, letter_count, that accepts a string and char as args. 
# The method should return the number of times that the char appears in the string.

require "byebug"

def letter_count(string, char)

    #count was nil
    count = 0

    # wasn't working with strings that included caps
    string.downcase.each_char do |c|
         
        # c = char needs to be the comparative c == char
        count += 1 if c == char 
    end
    count
end
