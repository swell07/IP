//4-4
PImage a;
PImage b;
PImage c;

void setup() {
  size(640, 640);
  background(255);
  fill(0);
  noLoop();
  
  a=loadImage("wall.png");
  b=loadImage("pacman.png");
  c=loadImage("coin.png");
}

//start point of the text
int x=50;
int y=50;

void draw() {
  String lines[] = loadStrings("level.txt"); //!!!!load text
  for (int i = 0; i < lines.length; i++) {
    x=50;
    String str=lines[i];
    println(lines[i]); //row first => y position

    for (int j=0; j < str.length (); j++) {
      char s= str.charAt(j);//col then => x position

      if (s =='#') { //conditions loops in the sencond for loop (to repeate every ROW)
        image(a, x-10, y-10, 20, 20);
      } 
      if (s =='@') {
        image(b, x-10, y-10, 18, 18);
      }
      if (s =='$') {
        image(c, x-10, y-10, 14, 18);
      } 
      else if (s =='.') {
        text (s, x, y);
        
      }
      x+=20;//oders
    }
    y+=20;
  }
}
