#Base Case
#return [] if end < start
#repeating process incrementing the value by 1

def range(start, last) # 1 4
    return [] if last <= start
    range(start, last - 1) << last - 1#1, 4
end 

# p range(1, 5)

def sum(array)
    sum = 0
    array.each do |num|
         sum += num
    end
    return sum
end

# puts sum([1,2,3,4])

# Base case: rec_sum([]) = 0
             #rec_sum([1]) = 1
             #rec_sum([1,2]) = 3
             #rec_sum([1,2,3]) = 6
def rec_sum(array)
    return 0 if array.length == 0
   array[0] + rec_sum(array[1..-1])
end

# p rec_sum([]) #=> 0
# p rec_sum([1]) #=> 1
# p rec_sum([1,2]) #=> 3
# p rec_sum([1,2,3]) #=> 6

#Base Case: if exponent == 0 return 1
#Repeating method: base * rec1(base, exponent - 1)
def rec1(base, exponent)
    return 1 if exponent == 0
    base * rec1(base, exponent - 1)
end 

# p rec1(3, 2)

#Base Case: if exponent == 0 return 1
#Base Case: if exponent == 1 return base
#Repeating method: 
#Use Memoization
def rec2(base, exponent)
    return 1 if exponent == 0
    return base if exponent == 1

    half1 = rec2(base, exponent / 2)
    half2 = (rec2(base, (exponent - 1) / 2))

    if exponent.even? 
        half1 * half1 
    else
        base * half2 * half2
    end 
end 

# p rec2(3, 3)
# p rec2(3, 4)
# p rec2(3, 5)
# p rec2(3, 256)

class Array

    def deep_dup
        new_arr = []
        self.each do |ele|
            if ele.is_a? Array
                new_arr << ele.deep_dup
            else
                new_arr << ele
            end
        end

        new_arr
    end
end 

# p robot_parts = [
#   [["nuts", "bolts"], ["washers"]],
#   ["capacitors", "resistors", "inductors"]
# ].deep_dup


# robot_parts.dup

# robot_parts_copy = [
#   ["nuts", "bolts", "washers"],
#   ["capacitors", "resistors", "inductors"]
# ]
 