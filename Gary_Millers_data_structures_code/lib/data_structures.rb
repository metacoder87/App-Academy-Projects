# EASY

# Write a method that returns the range of its argument (an array of integers).
def range(arr)
  return arr.max - arr.min
end

# Write a method that returns a boolean indicating whether an array is in sorted
# order. Use the equality operator (==), which returns a boolean indicating
# whether its operands are equal, e.g., 2 == 2 => true, ["cat", "dog"] ==
# ["dog", "cat"] => false
def in_order?(arr)
  return arr.sort == arr
end


# MEDIUM

# Write a method that returns the number of vowels in its argument
def num_vowels(str)
  vwls = "AaEeIiOoUu"
  vowels = []
  str.each_char do |char|
    if vwls.include?(char)
      vowels << char
    end
  end
  return vowels.length
end

# Write a method that returns its argument with all its vowels removed.
def devowel(str)
  vwls = "AaEeIiOoUu"
  vowels = []
  non_vwl = []
  str.each_char do |char|
    if vwls.include?(char)
      vowels << char
    else
      non_vwl << char
    end
  end
  return non_vwl.join
end


# HARD

# Write a method that returns an array of the digits of a
# non-negative integer in descending order and as strings, e.g.,
# descending_digits(4291) #=> ["9", "4", "2", "1"]
def descending_digits(int)
  arr = int.to_s.split("")
  return arr.sort.reverse!
end

# Write a method that returns a boolean indicating whether a string has
# repeating letters. Capital letters count as repeats of lowercase ones, e.g.,
# repeating_letters?("Aa") => true
def repeating_letters?(str)
  alph = Hash.new(0)
  str.upcase.each_char { |char| alph[char] += 1 }
  alph.each do |char, val|
    if val > 1
      return true
    else
      return false
    end
  end
end


# Write a method that converts an array of ten integers into a phone number in
# the format "(123) 456-7890".
def to_phone_number(arr) 
  str_un = arr[0..2].join
  str_do = arr[3..5].join
  str_tr = arr[6..9].join
  return "(" + str_un + ") " + str_do + "-" + str_tr 
end

# Write a method that returns the range of a string of comma-separated integers,
# e.g., str_range("4,1,8") #=> 7
def str_range(str)
  arr = str.split(",")
  return arr.max.to_i - arr.min.to_i
end


#EXPERT

# Write a method that is functionally equivalent to the rotate(offset) method of
# arrays. offset=1 ensures that the value of offset is 1 if no argument is
# provided. HINT: use the take(num) and drop(num) methods. You won't need much
# code, but the solution is tricky!
def my_rotate(arr, offset=1)
  return arr.rotate(offset)
end


            # meta_coder (Gary Miller) =)
            # gmiller052611@gmail.com