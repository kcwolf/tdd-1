# Unit Test Enginge
#
# Runs all unit tests saved in the tests directory for this project

require('testthat')                    # loads package `testthat` 
                                       # (only needed once per session)

# Run these lines on the saved files to carry out the tests:
source('r_src/quadrant_func.r')        # load the quadrant function in its
                                       # current saved state
test_dir('tests', reporter='Summary')  # Run all tests in the tests folder

