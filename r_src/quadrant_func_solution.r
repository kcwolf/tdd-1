# Quadrant Function Solution

quadrant_func <- function(x,y){
  # This function should take in two numbers, representing the coordinates of a point.
  # It should return 1, 2, 3, or 4, corresponding to the quadrant of the input point.
  # Please include input checking.
  
  # Check input validity
  stopifnot(is.numeric(x))   # reject non-numeric x
  stopifnot(is.numeric(y))   # reject non-numeric y
  stopifnot(length(x)==1)    # reject vectors
  stopifnot(length(y)==1)    # reject vectors
  
  # initialize variable to return with a 'fail-safe' value
  quad = "FAIL"
  
  # Now identify the quadrant
  if (x==0 && y==0) {quad = 0}       # origin case
  if (x!=0 && y==0) {quad = 'x'}     # x axis case
  if (x==0 && y!=0) {quad = 'y'}     # y axis case
  if (x>0  && y>0)  {quad = 1}      # quadrant I
  if (x<0  && y>0)  {quad = 2}      # quadrant II
  if (x<0  && y<0)  {quad = 3}      # quadrant III
  if (x>0  && y<0)  {quad = 4}
  
  stopifnot(quad!="FAIL")            # throw an error if quad is somehow not set
  
  return(quad)
  }