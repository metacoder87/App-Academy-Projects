


    #Part_1

def my_map(arr, &prc)
   arr.collect { |ele| prc.call(ele) }
end
