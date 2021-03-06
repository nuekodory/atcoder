from distutils.core import setup
from Cython.Build import cythonize


def sunuke_sum(arg: str) -> int:
    sum_digit = 0
    for char in arg:
        sum_digit += int(char)
    return sum_digit


current_min = 100000000000000000000.0
sunuke_list = []

for i in reversed(range(1, 10 ** 15)):
    div_sunuke = i / sunuke_sum(str(i))
    if div_sunuke < current_min:
        print(f"found: {i}")
        current_min = div_sunuke
        sunuke_list.append(i)
    else:
        print(f" pass: {i}")

print(sunuke_list)
