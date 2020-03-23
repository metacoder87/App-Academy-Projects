


    #Part_1

def my_map(arr, &prc)
   arr.collect { |ele| prc.call(ele) }
end

def my_select(arr, &prc)
    arr.keep_if { |ele| prc.call(ele) }
end

def my_count(arr, &prc)
    my_select(arr) { |ele| prc.call(ele) }.length
end

def my_any?(arr, &prc)
    my_count(arr) { |ele| prc.call(ele) } > 0
end

def my_all?(arr, &prc)
    !arr.map { |ele| prc.call(ele) }.include?(false)
end

def my_none?(arr, &prc)
    my_count(arr) { |ele| prc.call(ele) } == 0
end
