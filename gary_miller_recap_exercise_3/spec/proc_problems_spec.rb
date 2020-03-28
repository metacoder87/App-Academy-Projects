require "proc_problems"

describe "String" do
        describe "#select" do
        it "should return a new string containing characters of the original string that return true when passed into the block" do
            expect("app academy".select { |ch| !"aeiou".include?(ch) }).to eq("pp cdmy")
            expect("HELLOworld".select { |ch| ch == ch.upcase }).to eq("HELLO")
        end

        it "should return the empty string if no block is passed" do
            expect("HELLOworld".select).to eq("")
            expect("app academy".select).to eq("")
        end
    end
end
