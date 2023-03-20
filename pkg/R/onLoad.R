.onLoad <- function(libname, pkgname) {
  cat(gettextf("Launching %s / %s \\n", format(libname), format(pkgname)))
}
