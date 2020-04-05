

    # Proc Problems

class String

 # Extend the string class by defining a String#select method that 
 # accepts a block. The method should return a new string containing 
 # characters of the original string that return true when passed into 
 # the block. If no block is passed, then return the empty string. 
 # Do not use the built-in Array#select in your solution.

    def select(&prc)
        if prc
        self.split('').keep_if { |ele| prc.call(ele) }.join('')
        else return ""
        end
    end

 # Extend the string class by defining a String#map! method that accepts 
 # a block. The method should modify the existing string by replacing 
 # every character with the result of calling the block, passing in the 
 # original character and it's index. Do not use the built-in Array#map 
 # or Array#map! in your solution.

    def map!(&prc)
        self.chars.collect!.with_index { |ele, i| prc.call(ele, i) }.join
    end

end
