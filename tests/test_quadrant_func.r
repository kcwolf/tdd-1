# `testthat` unit tests for quadrant_func.r

# Basic cases
expect_that(quadrant_func(1,1), equals(1))     # basic first quadrant
expect_that(quadrant_func(10,10), equals(1))   # any value works
expect_that(quadrant_func(-1,5), equals(2))    # quadrant 2
expect_that(quadrant_func(-4, -4), equals(3))
expect_that(quadrant_func(3, -2), equals(4))

# Axis and Origin Cases
# Points on an axis are technically not in any quadrant
# The function should return 'x' if the point is on the x axis and
# 'y' if the point is on the 'y' axis
expect_that(quadrant_func(0,1), equals('y'))
expect_that(quadrant_func(1,0), equals('x'))
expect_that(quadrant_func(0,0), equals(0))

# Input error cases
expect_that(quadrant_func(1,"pie"), throws_error())
expect_that(quadrant_func("apple",1), throws_error())
expect_that(quadrant_func("apple","pie"), throws_error())

