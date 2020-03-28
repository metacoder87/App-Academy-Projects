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
