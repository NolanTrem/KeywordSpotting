After initial testing, it is evident that there are marginal diminishing returns after the following factors:

- 16 filters
- Quality factor of 3
- Maximum frequency of 2000 Hz

Based on this information, we propose further testing using slight variation around these parameters
to further test and find analog component optimization. The following variations have been chosen, where
two parameters are varied such that a three-dimensional mapping can be created and analyzed.

The following parameters were chosen to be covariated with the specified ranges

**Test 1:**
- [14, 18] filters, with a step of 1.
- Quality factor of 3, with a step of 1.
- Maximum frequency [1800, 2200], with a step of 2.


**Test 2:**
- [14, 18] filters, with a step of 1.
- Quality factor of [2, 4], with a step of 1.
- Maximum frequency 2000, with a step of 2.

These values will then be individually plotted to find an optimized dataset. The results of both tests will
then be summed and plotted, allowing for optimization in four dimensions.