# This script is intended to demonstrate some knowledge and fluency of Numpy #
# At issue would be the creation of a single-line iterator, for which a given word may generate a series of ASCII-related numbers over a given number of iterations #
# The operation to be performed with the ASCII numbers should be that the previous letters value should be added to the current letter, for however many iterations may be given #

import os
import traceback
import numpy as np
import os
import time
import csv
from datetime import datetime

# This is an example of one approach to this problem, without using NumPy - this will, however, cross over multiple lines #

##sum = 0
##for letter in list("Close") :
##    sum += ord(letter)
##    print(sum)

print(np.cumsum(3 * [ord(letter) for letter in list("Numpy")]))

# For fun, here are a few examples of finding the ASCII number associated with individual letters #

##print(ord("C"))
##print(ord("l"))
##print(ord("o"))
##print(ord("s"))
##print(ord("e"))

