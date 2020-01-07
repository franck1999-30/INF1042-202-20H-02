from b300098957 import f
from b300098957 import selectionSort

import math

i = 1
while i < 10:
    print(math.sqrt(f(i)))
    i = i + 1

print( " Is it sorted ? " + str([2, 3, 5, 6, 10] == selectionSort([5, 3, 6, 2, 10]) ) )
