require "recursion_problems"

describe "multiply" do
    it "should takes in two numbers and returns their product" do
        expect(multiply(3, 5)).to eq(15)
        expect(multiply(5, 3)).to eq(15)
        expect(multiply(2, 4)).to eq(8)
        expect(multiply(0, 10)).to eq(0)
    end

    it "should not use the multiplication(*) operator" do
        expect(multiply).to_not receive(:*)
        expect(multiply(-3, -6)).to eq(18)
        expect(multiply(3, -6)).to eq(-18)
        expect(multiply(-3, 6)).to eq(-18)
    end

    it "should be recursive" do
        expect(self).to receive(:multiply).at_least(:twice).and_call_original
        multiply(-3, 6)
    end
end

describe "lucas_sequence" do
    it "should return an array containing the Lucas Sequence up to the given length" do
        expect(lucas_sequence(0)).to eq([])
        expect(lucas_sequence(1)).to eq([2])
        expect(lucas_sequence(2)).to eq([2, 1])
        expect(lucas_sequence(3)).to eq([2, 1, 3])
        expect(lucas_sequence(6)).to eq([2, 1, 3, 4, 7, 11])
        expect(lucas_sequence(8)).to eq([2, 1, 3, 4, 7, 11, 18, 29])
    end

    it "should be recursive" do
        expect(self).to receive(:lucas_sequence).at_least(:twice).and_call_original
        lucas_sequence(3)
    end
end
