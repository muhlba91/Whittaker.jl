# First-order differences

To interpolate a missing value using first-order differences, the following code can be used:
```Julia
using Whittaker

y = [1.0, 1.2, 0, 1.6, 1.8]
w = [1.0, 1.2, 0, 1.6, 1.8]
lambda = 0.0001
z = whittaker1(y, w, lambda)

# z = [1.00002, 1.2, 1.4, 1.6, 1.79998]
```

**Note** You can use `whittaker1!` to smooth and interpolate in-place.
