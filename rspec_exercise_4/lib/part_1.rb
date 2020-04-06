

                #   APP ACADEMY
                #   RSPEC EXERCISE 4
                #   PART 1



def my_reject(arr, &prc)
    arr.delete_if { |ele| prc.call(ele) }
end

def my_one?(arr, &prc)
    arr.map { |ele| prc.call(ele) }.count(true) == 1
end

def hash_select(hash, &prc)
    hash.keep_if { |key, val| prc.call(key, val) }
end

def xor_select(arr, proc1, proc2)
    arr.select { |ele| (!proc1.call(ele) && proc2.call(ele)) || (proc1.call(ele) && !proc2.call(ele)) } 
end

def proc_count(val, arr)
    arr.map { |prc| prc.call(val) }.count(true)
end
