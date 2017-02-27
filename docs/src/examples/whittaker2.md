# Second-order differences

To interpolate a missing value using second-order differences, the following code can be used:
```Julia
using Whittaker

y = [1.0, 1.2, 0, 1.6, 1.8]
w = [1.0, 1.2, 0, 1.6, 1.8]
lambda = 0.0001
z = whittaker2(y, w, lambda)

# z = [0.999997, 1.20001, 1.4305, 1.64575, 1.80004]
```

**Note** You can use `whittaker2!` to smooth and interpolate in-place.
