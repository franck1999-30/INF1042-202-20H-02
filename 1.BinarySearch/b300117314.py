# -*- coding: utf-8 -*-
"""
Created on Wed Jan 15 15:04:43 2020

@author: 10
"""

def binary_search (list, item) :
    low = 0
    high = len (list) -1
   
    while low <= high :
        
        mid = (low + high)//2
        guess = list[mid]
        
        if guess == item :
            return mid
        
        if guess > item :
            high = mid -1
        
        else :
            low = mid + 1
            

    return None

my_list = [5, 7, 7, 12, 14, 18, 20, 23]



print (binary_search (my_list, 20))
print (binary_search (my_list, 7))




