def is_armstrong_number(number):
    summ, length = 0, len(f"{number}")
    for digit in str(number):
        summ += int(digit) ** length
    return summ == number
