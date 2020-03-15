# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".


def compress_str(str)
    compd = []
    arr = str.split('')
    count = 1
    arr.each_with_index do |char, i|
        if char == arr[i+1]
            count += 1
        elsif char != arr[i+1] && count == 1
            compd << char
        elsif char != arr[i+1] && count > 1
            compd << count
            compd << char
            count = 1
        end
    end
    compd.join('')
end


p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
