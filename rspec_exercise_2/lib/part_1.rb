#Part_1
#RSPEC_Excercise_2

def partition(arr, num)
    lil = arr.select { |ele| ele < num }
    big = arr.select { |ele| ele >= num }
    parti = []
    parti << lil 
    parti << big
end
