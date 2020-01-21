
"""

Created on Wed Jan 15 15:28:59 2020

@author: akram fadde
"""


def binary_search (list, item):
    low = 0
    high = len(list)-1
    
    while low <= high: 
        mid = (low + high) 
        guess = list[mid]
        if guess == item:
            return mid
        if guess > item :
           high = mid - 1
        else : 
           low = mid + 1 
    return None


my_list = [5,7,11,14,19,20,25]

trouve = 11
print( binary_search(my_list, trouve))
