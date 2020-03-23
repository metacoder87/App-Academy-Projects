


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

def and_selector(arr, prc_1, prc_2)
    arr.select { |ele| prc_1.call(ele) && prc_2.call(ele) }
end

def alternating_mapper(arr, prc_1, prc_2)
    mapped = []
    arr.each_index { |i| (i + 1).odd? ? mapped << prc_1.call(arr[i]) : mapped << prc_2.call(arr[i]) }
    mapped
end
