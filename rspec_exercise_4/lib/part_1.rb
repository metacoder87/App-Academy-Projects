

                #   APP ACADEMY
                #   RSPEC EXERCISE 4
                #   PART 1



def my_reject(arr, &prc)
    arr.delete_if { |ele| prc.call(ele) }
end

def my_one?(arr, &prc)
    arr.map { |ele| prc.call(ele) }.count(true) == 1
end

