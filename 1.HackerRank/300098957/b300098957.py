# -*- coding: utf-8 -*-
"""
Created on Wed Dec  4 14:18:41 2019

@author: 300098957
"""

def f( x):
    return x + 1

def findSmallest(arr):
    smallest = arr[0]
    smallest_index = 0
    for i in range(1, len(arr)):
        if arr[i] < smallest:
            smallest = arr[i]
            smallest_index = i
    return smallest_index        
    
def selectionSort(arr): 
  newArr = []
  for i in range(len(arr)):
    smallest = findSmallest(arr)
    newArr.append(arr.pop(smallest))
  return newArr

print( selectionSort([5, 3, 6, 2, 10]) )
