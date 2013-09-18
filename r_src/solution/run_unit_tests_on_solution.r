#### run_unit_tests_on_solution

#### A completed version of the function is saved as r_src/quad_func_solution.r

#### This will show all unit tests passing
library(testthat)
source('r_src/solution/quadrant_func_solution.r')
test_dir('tests', reporter='Summary')  
