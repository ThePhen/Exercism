def square(number):
    if not 0 < number < 65: raise ValueError("square must be between 1 and 64")
    return 2 ** (number - 1)

def total():
    out = 0
    for idx in range(1, 65):
        out += square(idx)
    return out