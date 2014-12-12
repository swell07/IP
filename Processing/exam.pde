//10.recursive function
void setup() { 
  println(power(2, 3));
}

int power(int A, int B) { //不可用void
  if (B == 0) {
    return 1;
  }
  if (B == 1) {
    return A;
  } else {
    return power(A, B-1)*A;
  }
}
