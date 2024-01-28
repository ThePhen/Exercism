#include "armstrong_numbers.h"

bool is_armstrong_number(int candidate)
{
    int len = 0;
    int tot = 0;
    for (int i = candidate; i > 0; i /= 10)
        len += 1;
    for (int j = candidate; j > 0; j /= 10)
        tot += pow(j % 10, len);
    return tot == candidate;
}
