# EASY

# Define a method that, given a sentence, returns a hash of each of the words as
# keys with their lengths as values. Assume the argument lacks punctuation.
def word_lengths(str)
    hsh = Hash.new
    str.split(" ").each { |word| hsh[word] = word.length }
    hsh 
end

# Define a method that, given a hash with integers as values, returns the key
# with the largest value.
def greatest_key_by_val(hash)
    hash.key(hash.values.max)
end

# Define a method that accepts two hashes as arguments: an older inventory and a
# newer one. The method should update keys in the older inventory with values
# from the newer one as well as add new key-value pairs to the older inventory.
# The method should return the older inventory as a result. march = {rubies: 10,
# emeralds: 14, diamonds: 2} april = {emeralds: 27, moonstones: 5}
# update_inventory(march, april) => {rubies: 10, emeralds: 27, diamonds: 2,
# moonstones: 5}
def update_inventory(older, newer)
   older.update(newer)
end

# Define a method that, given a word, returns a hash with the letters in the
# word as keys and the frequencies of the letters as values.
def letter_counts(word)
    hash = Hash.new()
    word.split('').each { |char| hash[char] = word.count(char) }
    hash
end

# MEDIUM

# Define a method that, given an array, returns that array without duplicates.
# Use a hash! Don't use the uniq method.
def my_uniq(arr)
    hash = Hash.new()
    arr.each { |num| hash[num] = arr.count(num) }
    hash.keys
end
# Define a method that, given an array of numbers, returns a hash with "even"
# and "odd" as keys and the frequency of each parity as values.
def evens_and_odds(numbers)
    hash = { :even => 0, :odd => 0 }
    numbers.each { |num| num % 2 == 0 ? hash[:even] += 1 : hash[:odd] += 1 }
    hash
end

# Define a method that, given a string, returns the most common vowel. Do
# not worry about ordering in the case of a tie. Assume all letters are 
# lower case.
def most_common_vowel(string)
    vowels = { "a" => 0, "e" => 0, "i" => 0, "o" => 0, "u" => 0 }
    string.each_char { |char| vowels.include?(char) ? vowels[char] += 1 : nil }
    vowels.key(vowels.values.max)
end

# HARD

# Define a method that, given a hash with keys as student names and values as
# their birthday months (numerically, e.g., 1 corresponds to January), returns
# every combination of students whose birthdays fall in the second half of the
# year (months 7-12). students_with_birthdays = { "Asher" => 6, "Bertie" => 11,
# "Dottie" => 8, "Warren" => 9 }
# fall_and_winter_birthdays(students_with_birthdays) => [ ["Bertie", "Dottie"],
# ["Bertie", "Warren"], ["Dottie", "Warren"] ]
def fall_and_winter_birthdays(students)
    fw = []
    students.values.each { |num| num >= 7 && num <= 12 ? fw << students.key(num) : nil }
    fw.combination(2).to_a
end

# Define a method that, given an array of specimens, returns the biodiversity
# index as defined by the following formula: number_of_species**2 *
# smallest_population_size / largest_population_size biodiversity_index(["cat",
# "cat", "cat"]) => 1 biodiversity_index(["cat", "leopard-spotted ferret",
# "dog"]) => 9
def biodiversity_index(specimens)
    spec_count = Hash.new()
    specimens.each { |ani| spec_count.include?(ani) ? spec_count[ani] += 1 : spec_count[ani] = 1 }
    large_pop = spec_count.values.max
    small_pop = spec_count.values.min
    num_spec = spec_count.length
    return num_spec * num_spec * small_pop / large_pop
end

# Define a method that, given the string of a respectable business sign, returns
# a boolean indicating whether pranksters can make a given vandalized string
# using the available letters. Ignore capitalization and punctuation.
# can_tweak_sign("We're having a yellow ferret sale for a good cause over at the
# pet shop!", "Leopard ferrets forever yo") => true
def can_tweak_sign?(normal_sign, vandalized_sign)
    van_hsh = character_count(vandalized_sign)
    norm_hsh = character_count(normal_sign)
  van_hsh.all? { |key, val| norm_hsh[key] >= val }
end


def character_count(str)
    chars = Hash.new()
    str.split("").each { |char| chars.include?(char) ? chars[char] += 1 : chars[char.downcase] = 1 }
    chars
end
