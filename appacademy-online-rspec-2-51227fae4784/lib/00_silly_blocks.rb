
def reverser(&str)
    words = str.call.split(" ")
    words.map { |word| word.reverse }.join(" ")
end

def adder(x=1, &y)
    x + y.call
end

def repeater(n=1, &y)
    n.times { y.call }
end
