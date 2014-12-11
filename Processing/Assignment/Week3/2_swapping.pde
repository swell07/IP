int [] arr = {4, 2, 7, 1, 3, 8};

int b = arr[arr.length - 1];//not 8, but a[5]
arr[arr.length - 1] = arr[0];//order of swapping!!!!
arr[0] = b;

println(arr);
