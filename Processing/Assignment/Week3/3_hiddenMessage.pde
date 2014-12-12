PImage a;
PImage b;
int difflength = 0;

char[] alphabet= { 
  ' ', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
};

//load images
a = loadImage("a.png");
b = loadImage("b.png");

//first, find out the length of the message by counting the different pixels
for (int i = 0; i < a.pixels.length; i++) { 
  if (b.pixels[i] != a.pixels[i]) {       
    //pixel is different, add to difflength
    difflength = difflength + 1;
  }
}

//now use difflength to create an array which will hold the hidden message
char[] diffarray = new char[difflength];

//reset difflength so we can reuse it as index
difflength = 0;

for (int i = 0; i < a.pixels.length; i++) {
 
  if (b.pixels[i] != a.pixels[i]) {       
    
    /*
    * use the difference between a and b to get the letter from the alphabet array
    * for some reason the difference is shifted 1 index too far, so that's why the -1 is needed
    * the abs() is used to make sure the number is positive (unsigned)
    */
    diffarray[difflength] = alphabet[abs(a.pixels[i] - b.pixels[i]) - 1]; 
    
    //add to the index, so the letters of the hidden message end up next to each other
    difflength++;
  }
}

//create message string using the char array we just set up
String message = new String(diffarray);

//print it
println("The message is: " + message);

   

//char[] converts numbers to alphabet directly

PImage a;
PImage b;

char[] diff;
int charOffset = 63;

int diffIndex = 0;

a = loadImage("a.png");
b = loadImage("b.png");

// lets see how many times there are differences in the pixels arrays
for (int i = 0; i<a.pixels.length; i++) {
  if (a.pixels[i] != b.pixels[i]) {
    diffIndex = diffIndex +1;
  }
}

diff = new char[diffIndex]; 
diffIndex = 0;

// now lets get those diffs out into the open
for (int i = 0; i<a.pixels.length; i++) {
  if (a.pixels[i] != b.pixels[i]) {
    diff[diffIndex] = char(charOffset + b.pixels[i] - a.pixels[i]); // why would we need a decoding array if we have char?
    diffIndex = diffIndex +1;
  }
}
String message = new String(diff);
println(message.replace('@', ' '));
