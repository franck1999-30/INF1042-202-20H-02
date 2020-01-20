import sys; sys.path.append('.') # Rajouter le repertoire courant
from b300117314 import binary_search
test = binary_search( [5,7,11,14,19,20,25], 11) == 2 
if  test:
     print('--------------------')
     print(':tada: :tada: :tada:')
else:
     print('--------------------')
     print(':no_entry: :no_entry: :interrobang:')
