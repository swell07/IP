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
    return power(A, B-1)*A; //return自己power()！！！！
  }
}


// or for loops???

void setup() {
  println(power(2, 3));
}

int power(int A, int B) {
  int value = 1;//value要在for loop前赋值，否则return找不到
  for (int i = 1; i <= B; i++) {
    value = A * value;
  }
  return value; //loop完了之后return
}

