

                #   APP ACADEMY
                #   RSPEC EXERCISE 5

def zip(*arr)
    arrays = []
    arr.each { |array| arrays << array }
    if arrays.length == 1
        return arrays[0]
    elsif arrays[2]
        arrays[0].zip(arrays[1], arrays[2])
    else arrays[0].zip(arrays[1])
    end
end

def prizz_proc(arr, proc1, proc2)
    arr.select { |ele| (proc1.call(ele) && !proc2.call(ele)) || (!proc1.call(ele) && proc2.call(ele)) }
end

def zany_zip(*arr)
    arrays = []
    arr.each { |array| arrays << array }
    if arrays.length == 1
        return arrays[0]
    elsif arrays.length == 2 
        arrays[0].zip(arrays[1])
    elsif arrays.length == 3
        while arrays[0].length < arrays[2].length
            arrays[0] << nil
        end
        arrays[0].zip(arrays[1], arrays[2])
    elsif arrays.length == 4
    while arrays[0].length < arrays[3].length
        arrays[0] << nil
    end
    arrays[0].zip(arrays[1], arrays[2], arrays[3])
    end
end

def maximum(arr, &prc)
    results = []
    arr.each { |ele| results << prc.call(ele) }
    if results.empty?
        return nil
    else arr[results.rindex(results.max)]
    end
end

def my_group_by(arr, &prc)
    hsh = Hash.new() { |h, k| h[k] = [] }
    arr.each { |ele| hsh[prc.call(ele)] << ele }
    hsh
end

def max_tie_breaker(arr, blk, &prc)
    winners = []
    the_one = []

    if arr.empty?
        return nil
    else p_sults = arr.map { |word| prc.call(word) }
    p_sults.each_with_index { |num, i| num == p_sults.max ? winners << arr[i] : num }
    end

    if winners.count == 1
        return winners[0]
    else tie_breaker = winners.map { |word| blk.call(word) }
    arr.each_with_index { |word, i| blk.call(word) == tie_breaker.max ? the_one << arr[i] : word }
        return the_one[0]
    end
end
