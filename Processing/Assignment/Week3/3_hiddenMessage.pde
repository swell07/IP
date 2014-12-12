 PImage a;
 PImage b;
 
 char[] diff;
 int charO = 63;
 int diffI = 0;
 
 char[] alpha={_,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z};
 //"YOU HAVE FOUND THE HIDEEN MESSAGE"
 
void setup(){
size(640,640);
a = loadImage("a.png");
b = loadImage("b.png");
}

 for (int i = 0; i < a.pixels.length; i++){
   if (b.pixels[i]-a >0){
     print(alpha.charAt(b.pixels[i]-a.pixels[i]);
   }
   
   

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
