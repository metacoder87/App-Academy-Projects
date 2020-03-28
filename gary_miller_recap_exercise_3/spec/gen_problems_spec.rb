require "gen_problems"

describe "no_dupes?" do
    it "should accept an array as an arg" do
        expect(no_dupes?(['x', 'x', 'y', 'z', 'z'])).to eq(['y'])
    end

    it "should return an new array containing the elements that were not repeated" do
        expect(no_dupes?([1, 1, 2, 1, 3, 2, 4])).to eq([3, 4])
    end

    it "should return an empty array if all elements were repeated" do
        expect(no_dupes?([true, true, true])).to eq([])
    end
end

describe "no_consecutive_repeats?" do
    it "should accept an array as an arg" do
        expect(no_consecutive_repeats?(['x'])).to eq(true)
    end

    it "should return true if an element never appears consecutively in the array" do
        expect(no_consecutive_repeats?(['cat', 'dog', 'mouse', 'dog'])).to eq(true)
        expect(no_consecutive_repeats?([10, 42, 3, 7, 10, 3])).to eq(true)
    end

    it "should return false if an element appears consecutively in the array" do
        expect(no_consecutive_repeats?([10, 42, 3, 3, 10, 3])).to eq(false)
        expect(no_consecutive_repeats?(['cat', 'dog', 'dog', 'mouse'])).to eq(false)
    end
end

describe "char_indices" do
    it "should return a hash containing keys equal to each character" do
        expect(char_indices('mississippi')).to eq({"m"=>[0], "i"=>[1, 4, 7, 10], "s"=>[2, 3, 5, 6], "p"=>[8, 9]})
    end

    it "should contain values in an array of indices for the key in original string" do
        expect(char_indices('classroom')).to eq({"c"=>[0], "l"=>[1], "a"=>[2], "s"=>[3, 4], "r"=>[5], "o"=>[6, 7], "m"=>[8]})
    end
end

describe "longest_streak" do
    it "should accept a string as an arg" do
        expect(longest_streak('a')).to eq('a')
    end

    it "should return the longest streak of consecutive characters in the string" do
        expect(longest_streak('accccbbb')).to eq('cccc')
    end

    it "should return the streak that occurs later in the string if there are any ties" do
        expect(longest_streak('aaaxyyyyyzz')) .to eq('yyyyy')
        expect(longest_streak('aaabbb')).to eq('bbb')
        expect(longest_streak('abc')).to eq('c')
    end
end

describe "bi_prime?" do
    it "should accept a number as an arg" do
        expect(bi_prime?(14)).to eq(true)
    end

    it "should return false if the number is not a bi-prime" do
        expect(bi_prime?(24)).to eq(false)
        expect(bi_prime?(64)).to eq(false)
    end

    it "should return true if the number is a bi-prime" do
        expect(bi_prime?(22)).to eq(true)
        expect(bi_prime?(25)).to eq(true)
        expect(bi_prime?(94)).to eq(true)
    end
end

describe "vigenere_cipher" do
    it "should accept a string and a key-sequence as args" do
        expect(vigenere_cipher("toerrishuman", [1])).to eq("upfssjtivnbo")
    end

    it "should return the encrypted message" do
        expect(vigenere_cipher("toerrishuman", [1, 2])).to eq("uqftsktjvobp")
        expect(vigenere_cipher("toerrishuman", [1, 2, 3])).to eq("uqhstltjxncq")
    end

    it "should return only lowercase alphabetic characters" do
        expect(vigenere_cipher("zebra", [3, 0])).to eq("ceerd")
        expect(vigenere_cipher("yawn", [5, 1])).to eq("dbbo")
    end
end

describe "vowel_rotate" do
    it "accepts a string as an arg" do
        expect(vowel_rotate('computer')).to eq("cempotur")
    end

    it "should replace every vowel with the vowel before it in the original string" do
        expect(vowel_rotate('oranges')).to eq("erongas")
        expect(vowel_rotate('headphones')).to eq("heedphanos")
    end

    it "should replace the first vowel of the string with the last vowel" do
        expect(vowel_rotate('awesome')).to eq("ewasemo")
        expect(vowel_rotate('bootcamp')).to eq("baotcomp")
    end
end
