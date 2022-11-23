#Base Case
#return [] if end < start
#repeating process incrementing the value by 1

def range(start, last) # 1 4
    return [] if last <= start
    range(start, last - 1) << last - 1#1, 4
end 

p range(1, 5)