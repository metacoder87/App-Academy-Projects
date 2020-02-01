# EASY

# Return the argument with all its lowercase characters removed.
def destructive_uppercase(str)
    str.each_char do |char|
        if char = char.downcase
            str.delete!(char)
        end

    end
   return str
end

# Return the middle character of a string. Return the middle two characters if
# the word is of even length, e.g. middle_substring("middle") => "dd",
# middle_substring("mid") => "i"
def middle_substring(str)
    mid = str.length / 2
    mid_eve = str.length / 2 - 1
    arr = []

    str.each_char.with_index do |char, ind|
        if str.length.even? == true
            arr << str[mid_eve]
            arr << str[mid]
            return arr.join
        else
            return str[mid]
        end
    end 
end

# Return the number of vowels in a string.
VOWELS = %w(a e i o u)
def num_vowels(str)
arr = []
    str.each_char do |char|
        if VOWELS.include?(char)
            arr << char
        end
    end
  return arr.join.length
end

# Return the factoral of the argument (num). A number's factorial is the product
# of all whole numbers between 1 and the number itself. Assume the argument will
# be > 0.
def factorial(num)
  fac = 1
    (1..num).each do |bit|
      fac *= bit
    end
  return fac
end


# MEDIUM

# Write your own version of the join method. separator = "" ensures that the
# default seperator is an empty string.
def my_join(arr, separator = "")
brr = ""
  arr.each do |char|
    brr << char 
      brr << " "
  end
    brr.strip!
    brr.gsub!(" ", separator)
  return brr
end

# Write a method that converts its argument to weirdcase, where every odd
# character is lowercase and every even is uppercase, e.g.
# weirdcase("weirdcase") => "wEiRdCaSe"
def weirdcase(str)
  arr = []
  str.each_char.with_index do |char, idx|
    if idx.even? == true 
      arr << char.downcase
    else
      arr << char.upcase
    end
  end
  return arr.join
end

# Reverse all words of five more more letters in a string. Return the resulting
# string, e.g., reverse_five("Looks like my luck has reversed") => "skooL like
# my luck has desrever")
def reverse_five(str)
  arr = str.split(" ")
  brr = [] 
    arr.each do |word|
      if word.length > 4
        brr << word.reverse
      else
        brr << word
      end
    end
  return brr.join(" ")
end

# Return an array of integers from 1 to n (inclusive), except for each multiple
# of 3 replace the integer with "fizz", for each multiple of 5 replace the
# integer with "buzz", and for each multiple of both 3 and 5, replace the
# integer with "fizzbuzz".
def fizzbuzz(n)
  arr = []
    (1..n).each do |num|
      if num % 3 == 0 && num % 5 != 0 
        arr << "fizz"
      elsif num % 3 != 0 && num % 5 == 0 
        arr << "buzz"
      elsif num % 3 == 0 && num % 5 == 0 
        arr << "fizzbuzz"
      else arr << num
      end
    end
  return arr
end


# HARD

# Write a method that returns a new array containing all the elements of the
# original array in reverse order.
def my_reverse(arr)
  arr.reverse.each { |ele| puts ele }
end

# Write a method that returns a boolean indicating whether the argument is
# prime.
def prime?(num)
  require 'prime'
  return Prime.prime?(num)
end

# Write a method that returns a sorted array of the factors of its argument.
def factors(num)
  arr = []
  (1..num).each do |n|
    if num % n == 0 
      arr << n
    end
  end
  return arr
end

# Write a method that returns a sorted array of the prime factors of its argument.
def prime_factors(num)
  brr = []
  arr = factors(num)
  arr.each do |ele|
    if prime?(ele) == true
      brr << ele
    end
  end
  return brr
end

# Write a method that returns the number of prime factors of its argument.
def num_prime_factors(num)
  arr = prime_factors(num)
  return arr.length
end


# EXPERT

# Return the one integer in an array that is even or odd while the rest are of
# opposite parity, e.g. oddball([1,2,3]) => 2, oddball([2,4,5,6] => 5)
def oddball(arr)
  brr = []
    arr.each do |num|
      if num.even? == true
        brr << num
      end
    end
    if brr.length == 1
      return brr[0]
    else return arr[0]
  end
end



            # meta_coder (Gary Miller) =)
            #gmiller052611@gmail.com