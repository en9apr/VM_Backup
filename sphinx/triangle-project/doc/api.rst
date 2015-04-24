The trianglelib API Reference
=============================

.. automodule:: trianglelib

The 'Shape' Module
------------------

.. module:: trianglelib.shape

.. autoclass:: Triangle 

You instatiate a ``Triangle`` by providing exactly three lengths ``a``, ``b`` and ``c``. They can be integers or floating-point numbers, and should be listed clockwise around the triangle. If the three lengths *cannot* make a valid triangle, then ``ValueError`` will be raised instead.

>>> from trianglelib.shape import Triangle
>>> t = Triangle(3,4,5)
>>> print t.is_equilateral()
False
>>> print t.area()
6.0

>>> 3 + 3
6

.. testcode::

   print "hi"

.. testoutput::

   hi

Triangles support the following attibutes, operators and methods:

.. class:: Triangle 
   Triangle class

   .. method:: shape()
	  Shape docs

   .. method:: utils()
   .. method:: tests()

The three side lengths provided during installation.

	triangle == triangle

Returns true if the two triangles have sides of the same lengths, in the same order. Note that it is ok if the two triangles happen to start their list of sides at a different corner; ``3,4,5`` is the same triangle as ``4,5,3`` but neither of these are the same triangle as their mirror image ``5,4,3``.

.. autoclass:: Triangle 
   :members:
   :member-order: groupwise
	
The 'Utils' Module
------------------

.. automodule:: trianglelib.utils
   :members:
   :member-order: groupwise



