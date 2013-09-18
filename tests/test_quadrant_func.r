# `testthat` unit tests for quadrant_func.r

# Basic cases
expect_that(quadrant_func(1,1), equals(1))     # basic first quadrant
expect_that(quadrant_func(10,10), equals(1))   # any value works
expect_that(quadrant_func(-1,5), equals(2))    # quadrant 2
expect_that(quadrant_func(-4, -4), equals(3))
expect_that(quadrant_func(3, -2), equals(4))

# Axis and Origin Cases
# Points on an axis are technically not in any quadrant
expect_that(quadrant_func(1,0), equals('x'))   # on x axis
expect_that(quadrant_func(0,1), equals('y'))   # on y axis
expect_that(quadrant_func(0,0), equals(0))     # the origin

# Input error cases
expect_that(quadrant_func(1,"pie"), throws_error())            # reject text
expect_that(quadrant_func("apple",1), throws_error())          # reject text
expect_that(quadrant_func("apple","pie"), throws_error())      # reject text
# expect_that(quadrant_func(c(1,2,3), c(4,5,6)), throws_error()) # reject vectors
