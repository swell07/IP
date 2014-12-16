int r;//greatest common divisor using Euclid

void setup(){
println(Euclid(3, 2));
}

int Euclid(int a, int b) {
  if (a < b) {
    int temp = a;
    a = b;
    b = temp;
  }
  r = a % b;
    while (r != 0) {
    a = b;
    b = r;
    r = a % b;
  }
  return b;
}
