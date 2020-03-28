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
