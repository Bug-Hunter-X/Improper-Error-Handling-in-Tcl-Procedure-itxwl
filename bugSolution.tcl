proc goodproc {x} {
  if {$x > 0} {
    return 1
  } else {
    return -code error "x must be positive"
  }
}

catch {goodproc -1} result
if {$result == -1} {
  puts "Error occurred: $::errorInfo"
}

puts "This line will execute even if there was an error."