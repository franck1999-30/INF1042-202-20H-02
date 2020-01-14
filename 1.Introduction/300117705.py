# -*- coding: utf-8 -*-
"""
Created on Tue Jan 14 15:13:02 2020

@author: acorlings
"""

print( 10 * 'Bonne Annee \n') #o(1)

for i in range(0,10):  # o(log n)
    print("Bonne Annee")