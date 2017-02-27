# Whittaker.jl

This package provides implementations for first- and second-order differences Whittaker-Henderson smoothing and interpolation.


## Project Status

[![Build Status](https://travis-ci.org/muhlba91/Whittaker.jl.svg?branch=master)](https://travis-ci.org/muhlba91/Whittaker.jl)
[![Build Status](https://ci.appveyor.com/api/projects/status/github/muhlba91/Whittaker.jl?branch=master&svg=true)](https://ci.appveyor.com/project/muhlba91/whittaker-jl/branch/master)
[![Coverage Status](https://coveralls.io/repos/muhlba91/Whittaker.jl/badge.svg?branch=master)](https://coveralls.io/r/muhlba91/Whittaker.jl?branch=master)


## Installation

To install `Whittaker.jl`, start Julia and run:
```Julia
Pkg.add("Whittaker")
```


## Example

To interpolate a missing value using first-order differences, the following code can be used:
```Julia
using Whittaker

y = [1.0, 1.2, 0, 1.6, 1.8]
w = [1.0, 1.2, 0, 1.6, 1.8]
lambda = 0.0001
z = whittaker1(y, w, lambda)

# z = [1.00002, 1.2, 1.4, 1.6, 1.79998]
```

In order to use second-order differences, use:
```Julia
z = whittaker2(y, w, lambda)

# z = [0.999997, 1.20001, 1.4305, 1.64575, 1.80004]
```

**Note** You can use `whittaker1!` and `whittaker2!` to smooth and interpolate in-place.


## Credits

The code is based on ['Smoothing and interpolation with finite differences'](http://dl.acm.org/citation.cfm?id=180916) [Eilers P. H. C, 1994].
