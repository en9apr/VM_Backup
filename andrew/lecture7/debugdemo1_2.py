"""
$UWHPSC/codes/python/debugdemo1.py

Debugging demo using pdb. Original code.
"""

x = 3
y = -22.

def f(z):
	x = z+10
	import pdb; pdb.set_trace()
	return x

y = f(x)

print "x = ",x
print "y = ",y

