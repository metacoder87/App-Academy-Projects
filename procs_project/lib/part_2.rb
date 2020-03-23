


    #Part_2

def reverser(str, &prc)
    arr = [str.split('').reverse.join('')]
    arr.map! { |string| prc.call(string) }[0]
end

def word_changer(str, &prc)
    str.split(' ').map! { |word| prc.call(word) }.join(' ')
end

def greater_proc_value(num, prc_1, prc_2)
    if prc_1.call(num) > prc_2.call(num)
        prc_1.call(num) 
    else prc_2.call(num)
    end
end
