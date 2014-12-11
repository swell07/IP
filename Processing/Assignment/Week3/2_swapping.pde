//2-2
int [] arr = {4, 2, 7, 1, 3, 8};

int b = arr[arr.length - 1];//not 8, but a[5]
arr[arr.length - 1] = arr[0];//order of swapping!!!!
arr[0] = b;

println(arr);

//2-3
int [] arr = {
  4, 2, 7, 1, 3, 8
};

for (int i = 0; i < arr.length - 1; i++) { // length-1!!! with i+1
  int current = arr[i];
  int next = arr[i+1];

  if (next < current) {
    int b = arr[i]; //order!!!!!
    arr[i] = arr[i+1];
    arr[i+1] = b;
  }
}

println(arr); //4-2..2-4, 4-7..4-7, 7-1..1-7, 7-3..3-7, 7-8..241378

//2-4 repeat!!!-while condition
int [] arr = {
  4, 2, 7, 1, 3, 8
};
boolean swap = true;

while (swap) { // Controls a sequence of repetitions

  swap = false; // if it's false, repeat, til it's true. so starts with false!!

  for (int i = 0; i < arr.length - 1; i++) { // length-1!!! with i+1
    int current = arr[i];
    int next = arr[i+1];

    if (next < current) {
      int b = arr[i+1]; //order!!!!!
      arr[i+1] = arr[i];
      arr[i] = b;
      swap = true;
    }
  }
}
println(arr);//123478
