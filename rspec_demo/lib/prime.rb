def prime?(num)
    prime = true
    if num == 1
        prime = false
    end
    (2...num).each do |int|
        if num % int == 0
            prime = false
        end
    end
    prime
end