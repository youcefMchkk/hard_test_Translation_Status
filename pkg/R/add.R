# a terrible addition function
add = function(..., verbose = FALSE) {
  dots = list(...)
  input_types <- vapply(dots, typeof, character(1L))
  if (!all(inputs_types == "integer")) {
    stop(
      stop(domain=NA, gettextf("add() only works on all-integer input, but found other types: %s", 
                               toString(unique(setdiff(input_types, "integer")))))
    )
  }
  if (verbose) {
    catf("Adding %d integer inputs\n", length(dots))
  }
  Reduce(`+`, dots)
}

catf = function(fmt, ..., domain = NULL) {
  cat(gettextf(fmt, ..., domain = domain))
}
