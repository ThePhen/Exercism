def num_equal_sides(sides):
        
    if sides[0] + sides[1] + sides[2] <= 0: return -1
    if sides[0] + sides[1] < sides[2]: return -1
    if sides[1] + sides[2] < sides[0]: return -1
    if sides[0] + sides[2] < sides[1]: return -1
        
    one = (sides[0] == sides[1]) * 1
    two = (sides[0] == sides[2]) * 1
    thr = (sides[1] == sides[2]) * 1
    return one + two + thr

def equilateral(sides):
    return num_equal_sides(sides) == 3

def isosceles(sides):
    return num_equal_sides(sides) >= 1

def scalene(sides):
    return num_equal_sides(sides) == 0
