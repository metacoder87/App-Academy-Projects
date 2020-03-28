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

describe "#map!" do
    it "should define a String#map! method that accepts a block" do
        word_1 = "Lovelace"
        expect(word_1.map! do |ch| 
                if ch == 'e'
                    '3'
                elsif ch == 'a'
                    '4'
                else
                    ch
                end
            end).to eq("Lov3l4c3")
    end

    it "should modify the existing string" do
        word_2 = "Dijkstra"
        expect(word_2.map! do |ch, i|
                if i.even?
                    ch.upcase
                else
                    ch.downcase
                end
            end).to be("DiJkStRa")
    end

end
