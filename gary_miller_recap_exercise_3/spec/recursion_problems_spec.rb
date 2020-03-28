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

describe "prime_factorization" do
    it "should accept a number and returns an array representing the prime factorization of the given number" do
        expect(prime_factorization(12)).to eq([2, 2, 3])
        expect(prime_factorization(24)).to eq([2, 2, 2, 3])
    end

    it "should contain only prime numbers that multiply together to the given num" do
        expect(prime_factorization(7)).to eq([7])
        expect(prime_factorization(11)).to eq([11])
        expect(prime_factorization(2017)).to eq([2017])
    end

    it "should contain numbers in ascending order" do
        expect(prime_factorization(25)).to eq([5, 5])
        expect(prime_factorization(60)).to eq([2, 2, 3, 5])
    end

    it "should be recursive" do
        expect(self).to receive(:prime_factorization).at_least(:twice).and_call_original
        prime_factorization(25)
    end
end
