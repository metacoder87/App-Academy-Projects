# Write a method, least_common_multiple, that takes in two numbers and returns the smallest number that is a mutiple
# of both of the given numbers
def least_common_multiple(num_1, num_2)
    big_num = [num_1, num_2].max
    mults = (big_num...100).select { |num| num % num_1 == 0 && num % num_2  == 0 ? num : nil}
    mults[0]
end



# Write a method, most_frequent_bigram, that takes in a string and returns the two adjacent letters that appear the
# most in the string.
def most_frequent_bigram(str)
    bigrams = []
    bi_hash = Hash.new(0)
    str[0...str.length].split('').each_index { |i| bigrams << str[i] + str[i + 1] if str[i+1] }
    bigrams.map { |bigram| bi_hash[bigram] += 1 }
    bi_hash.key(bi_hash.values.max)
end


class Hash
    # Write a method, Hash#inverse, that returns a new hash where the key-value pairs are swapped
    def inverse
        swapped = Hash.new()
        self.each_pair { |k, v| swapped[v] = k }
        swapped
    end
end


class Array
    # Write a method, Array#pair_sum_count, that takes in a target number returns the number of pairs of elements that sum to the given target
    def pair_sum_count(num)
        self.permutation(2).to_a.select { |ele| ele.inject(:+) == num }.count/2
    end

    # Write a method, Array#bubble_sort, that takes in an optional proc argument.
    # When given a proc, the method should sort the array according to the proc.
    # When no proc is given, the method should sort the array in increasing order.
    #
    # Sorting algorithms like bubble_sort, commonly accept a block. That block accepts
    # two parameters, which represents the two elements in the array being compared.
    # If the block returns 1, it means that the second element passed to the block
    # should go before the first (i.e. switch the elements). If the block returns -1,
    # it means the first element passed to the block should go before the second
    # (i.e. do not switch them). If the block returns 0 it implies that
    # it does not matter which element goes first (i.e. do nothing).
    #
    # This should remind you of the spaceship operator! Convenient :)
    def bubble_sort(&prc)
        self.sort! { |a, b| prc ? prc.call(a, b) : a <=> b }
    end
end
