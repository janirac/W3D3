#Base Case
#return [] if end < start
#repeating process incrementing the value by 1

def range(start, last) # 1 4
    return [] if last <= start
    range(start, last - 1) << last - 1#1, 4
end 

p range(1, 5)

def sum(array)
    sum = 0
    array.each do |num|
         sum += num
    end
    return sum
end

puts sum([1,2,3,4])

# Base case: rec_sum([]) = 0
             #rec_sum([1]) = 1
             #rec_sum([1,2]) = 3
             #rec_sum([1,2,3]) = 6
def rec_sum(array)
    return 0 if array.length == 0
   array[0] + rec_sum(array[1..-1])
end

p rec_sum([]) #=> 0
p rec_sum([1]) #=> 1
p rec_sum([1,2]) #=> 3
p rec_sum([1,2,3]) #=> 6