int[] arr = {
  1, -5, 200, 1, -3
};

void setup() {
  replaceElements(4, 0);
  println(arr);
}

void replaceElements(int N, int X) {

  if (N < arr.length) {

    for (int i = 0; i < N; i++) {
      arr[i] = X;
    }
  } else{
  println("oh, no!");}
}
