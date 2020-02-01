require 'byebug'

# EASY

# Define a method that returns the sum of all the elements in its argument (an
# array of numbers).
def array_sum(arr)
    return arr.reduce(:+) if arr.length != 0
    return 0
end

# Define a method that returns a boolean indicating whether substring is a
# substring of each string in the long_strings array.
# Hint: you may want a sub_tring? helper method
def in_all_strings?(long_strings, substring)
    long_strings.all? do |sub_tring| 
        if sub_tring.include?(substring) 
            return true
        else false
        end
    end
end

# Define a method that accepts a string of lower case words (no punctuation) and
# returns an array of letters that occur more than once, sorted alphabetically.
def non_unique_letters(string)
    arr = []
    string.each_char do |char| if string.count(char) > 1 && 
        !arr.include?(char) && 
        char != " "
        arr << char
      end
    end
  return arr.sort
end

# Define a method that returns an array of the longest two words (in order) in
# the method's argument. Ignore punctuation!
def longest_two_words(string)
    arr = string.split(" ")
    sorted = arr.sort_by { |str| str.length }
    return sorted[-2..-1]
end

# MEDIUM

# Define a method that takes a string of lower-case letters and returns an array
# of all the letters that do not occur in the method's argument.
def missing_letters(string)
    arr = []
    alpha = "abcdefghijklmnopqrstuvwxyz"
    alpha.each_char do |char| if !string.include?(char)
        arr << char
        end
    end
    return arr
end

# Define a method that accepts two years and returns an array of the years
# within that range (inclusive) that have no repeated digits. Hint: helper
# method?
def no_repeat_years(first_yr, last_yr)
    years_arr = []
    (first_yr..last_yr).each { |year| years_arr << year if not_repeat_year?(year) }
    return years_arr
end

def not_repeat_year?(year)
    arr = year.to_s.split("")
    if arr.uniq.length == arr.length
        return true
    else false
    end
end

# HARD

# Define a method that, given an array of songs at the top of the charts,
# returns the songs that only stayed on the chart for a week at a time. Each
# element corresponds to a song at the top of the charts for one particular
# week. Songs CAN reappear on the chart, but if they don't appear in consecutive
# weeks, they're "one-week wonders." Suggested strategy: find the songs that
# appear multiple times in a row and remove them. You may wish to write a helper
# method no_repeats?
def one_week_wonders(songs)
  charts = songs.uniq 
    songs.each.with_index do |song, i| 
      if songs[i] == songs[i+1]
        charts.delete(song)
      end
    end
  return charts
end


# Define a method that, given a string of words, returns the word that has the
# letter "c" closest to the end of it. If there's a tie, return the earlier
# word. Ignore punctuation. If there's no "c", return an empty string. You may
# wish to write the helper methods c_distance and remove_punctuation.

def for_cs_sake(string)
  cwords = []
  arr = string.split()
  arr.each do |word|
    if word.include?("c")
        cwords << remove_punctuation(word)
    end
  end
  return c_winner(cwords)
end

def c_winner(arr)
    arr.each_with_index do |word, i|
      while arr.length > 2
      dis_word = arr[i]
      dat_word = arr[i + 1]
      dis = c_distance(dis_word)
      dat = c_distance(dat_word)
        if dis > dat
          arr.delete(word)
        end
      end
    end
  return arr[0]
end

def c_distance(word)
  word.reverse.each_char.with_index do |char, i|
    if char == "c"
      return i
    end
  end
end

def remove_punctuation(word)
  func = ["!",".",",","?"]
  pure_word = []
  word.each_char do |char|
    if !func.include?(char)
      pure_word << char
    end
  end
  return pure_word.join()
end

# Define a method that, given an array of numbers, returns a nested array of
# two-element arrays that each contain the start and end indices of whenever a
# number appears multiple times in a row. repeated_number_ranges([1, 1, 2]) =>
# [[0, 1]] repeated_number_ranges([1, 2, 3, 3, 4, 4, 4]) => [[2, 3], [4, 6]]

def repeated_number_ranges(arr)
  new_arr = []
  beg = 0
  arr.each_with_index do |num, i| 
    nes_arr = []
    if arr[i] == arr[i + 1] && arr[i] != arr[i - 1]
      beg = i 
    elsif arr[i] != arr[i + 1] && arr[i] == arr[i - 1] 
      nes_arr << beg
      nes_arr << i
      new_arr << nes_arr
    end
  end
 return new_arr
end


            # meta_coder (Gary Miller) =)
            # gmiller052611@gmail.com