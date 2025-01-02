proc badproc {x} {
  if {$x > 0} {
    return 1
  } else {
    error "x must be positive"
  }
}

badproc -1