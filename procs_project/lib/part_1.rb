


    #Part_1

def my_map(arr, &prc)
   arr.collect { |ele| prc.call(ele) }
end

def my_select(arr, &prc)
    arr.keep_if { |ele| prc.call(ele) }
end
