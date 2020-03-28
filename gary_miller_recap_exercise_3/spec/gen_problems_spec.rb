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
