//non recursive - for loops
void setup() {
  println(Fibonacci(43));
}

long Fibonacci(int n) {
  long value1 = 1;
  long value2 = 1;
  if (n <=1) {
    return n;
  }

  for (int i = 2; i < n; i++) {
    long temp = value2;
    value2 += value1;
    value1 = temp;
  }
  return value2;
}


//recursion
void setup() {
  println(Fibonacci(43));
}

long Fibonacci(int n) {
  if (n == 1) {
    return 1;
  }if (n == 2) {
    return 1;
  } else {
    return Fibonacci(n-1) + Fibonacci(n-2);
  }
}
