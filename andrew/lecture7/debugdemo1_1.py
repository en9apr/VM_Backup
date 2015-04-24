"""
$UWHPSC/codes/python/debugdemo1_1.py

Debugging demo using pdb. Original code.
"""

x = 3
y = -22.

def f(z):
	x = z+10
	print "+++ in function f: x=%s, y=%s, z=%s" % (x,y,z)
	return x
print "+++ before calling f: x=%s, y=%s" % (x,y)
y = f(x)
print "+++ after calling f: x=%s, y=%s" % (x,y)


