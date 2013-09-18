# Test Driven Development Demo 1

Directory structure and unit tests for a new R function, `quadrant(x, y)`, which takes in coordinants x and y and returns the quadrant that point is in:

* Quadrant 1: both positive
* Quadrant 2: x negative, y positive
* Quadrant 3: both negative
* Quadrant 4: x positive, y negative
* Points on the x or y axis should return 'x' or 'y' respectively
* The origin should return 0
* Bad input (anything other than two numbers) should throw an error
  * hint: use a combination of `stopifnot()` and `is.numeric()`

The unit tests are in the tests directory.  

A shell of the function is in the r_src directory.

The test launching script is in the r_src directory.

Please finish out the function.

