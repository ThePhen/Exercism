def leap_year(year):
    if 0 == year % 400: return True
    if 0 == year % 100: return False
    return 0 == year % 4