import sys; sys.path.append('.') # Rajouter le repertoire courant
from b300116685 import binary_search
test = binary_search( [5,7,11,14,19,20,25], 11) == 2 
if  test:
     print(':tada: :tada: :tada:')
else:
     print(':stop: :stop: :bang:')
