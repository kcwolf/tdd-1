# Unit Test Enginge
# Runs all unit tests saved in the tests directory for this project

require('testthat')

# load the function to be tested
source('r_src/quadrant_func.r')

# run the tests using testthat's function: test_dir()
test_dir('tests', reporter='Summary')  

