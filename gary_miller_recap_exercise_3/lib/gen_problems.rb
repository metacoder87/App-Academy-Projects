

    # General Problems

 # Write a method no_dupes?(arr) that accepts an array as an arg 
 # and returns an new array containing the elements that were 
 # not repeated in the array.

def no_dupes?(arr)
    count = Hash.new(0)
    arr.each { |ele| count[ele] += 1 }
    no_dupes = count.select { |k, v| v == 1 }
    no_dupes.keys
end

 # Write a method no_consecutive_repeats?(arr) that accepts 
 # an array as an arg. The method should return true if an 
 # element never appears consecutively in the array; 
 # it should return false otherwise.

def no_consecutive_repeats?(arr)
    arr.each_index do |i| 
       return false if arr[i] == arr[i + 1] 
    end
    true
end

 # Write a method char_indices(str) that takes in a string as an arg. 
 # The method should return a hash containing characters as keys. 
 # The value associated with each key should be an array containing 
 # the indices where that character is found.

def char_indices(str)
    indys = Hash.new { |h, k| h[k] = [] }
    str.chars.each_with_index { |char, i| indys[char] << i }
    indys
end

 # Write a method longest_streak(str) that accepts a string as an arg. 
 # The method should return the longest streak of consecutive characters 
 # in the string. If there are any ties, return the streak that occurs 
 # later in the string.

def longest_streak(str)
    indicies = char_indices(str).values.sort { |a,b| a.length <=> b.length }[-1]
    char = char_indices(str).key(indicies) 
    count = indicies.count
    char * count
end

 # Write a method bi_prime?(num) that accepts a number as an arg and 
 # returns a boolean indicating whether or not the number is a bi-prime. 
 # A bi-prime is a positive integer that can be obtained by multiplying 
 # two prime numbers.

 # For Example:
 # 14 is a bi-prime because 2 * 7
 # 22 is a bi-prime because 2 * 11
 # 25 is a bi-prime because 5 * 5
 # 24 is not a bi-prime because no two prime numbers have a product of 24

def bi_prime?(num)
   primes = (2..100).select { |i| prime?(i) }
   dubs = primes.permutation(2).to_a
   sqrs = primes.map { |i| i * i }
   bi_primes = dubs.map { |dub| dub.inject(:*) }
   return bi_primes.include?(num) || sqrs.include?(num)
end

def prime?(num)
    (2...num).none? { |i| num % i == 0 }
end

 # A Caesar cipher takes a word and encrypts it by offsetting each 
 # letter in the word by a fixed number, called the key. 
 # Given a key of 3, for example: a -> d, p -> s, and y -> b.
 # A Vigenere Cipher is a Caesar cipher, but instead of a single key, 
 # a sequence of keys is used. For example, if we encrypt "bananasinpajamas" 
 # with the key sequence 1, 2, 3, then the result would be "ccqbpdtkqqcmbodt":

 # Message:  b a n a n a s i n p a j a m a s
 # Keys:     1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1
 # Result:   c c q b p d t k q q c m b o d t
 
 # Write a method vigenere_cipher(message, keys) that accepts a string 
 # and a key-sequence as args, returning the encrypted message. Assume 
 # that the message consists of only lowercase alphabetic characters.

def vigenere_cipher(message, keys)
    abc = 'abcdefghijklmnopqrstuvwxyz'.split('')
    ciphed = []
    cipher = message.split('').each_with_index do |char, idx|
            num = keys[idx % keys.count]
            new_alpha = abc.rotate(num)
            ciphed << new_alpha[abc.index(char)]
   end
   ciphed.join('')
end

 # Write a method vowel_rotate(str) that accepts a string as an arg and 
 # returns the string where every vowel is replaced with the vowel the 
 # appears before it sequentially in the original string. The first vowel 
 # of the string should be replaced with the last vowel.

def vowel_rotate(str)
    r_vowels = str.split('').select { |char| 'aeiou'.include?(char) }.rotate(-1)
    i = 0 
    rotated = []
    str.split('').map do |char|
        if 'aeiou'.include?(char)
            rotated << r_vowels[i]
            i += 1
        else rotated << char
        end
    end
    rotated.join('')
end
