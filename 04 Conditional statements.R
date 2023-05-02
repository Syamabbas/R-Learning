# Conditional statements
# IF
x <- 4
if (x > 0) {
  print("x is a positive number")
}

# Else
x <- -7
if (x > 0) {
  print("x is a positive number")
} else {
  print("x is a either a negative number or zero")
}

# Else if
x <- 0
if (x < 0) {
  print("x is a negative number")
} else if (x == 0) {
  print("x is a a zero")
} else {
  print("x is a positive number")
}