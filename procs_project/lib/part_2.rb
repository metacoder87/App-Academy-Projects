


    #Part_2

def reverser(str, &prc)
    arr = [str.split('').reverse.join('')]
    arr.map! { |string| prc.call(string) }[0]
end

def word_changer(str, &prc)
    str.split(' ').map! { |word| prc.call(word) }.join(' ')
end
