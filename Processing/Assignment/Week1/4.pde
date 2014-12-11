void setup() {
  size(640, 640);
}

//the edge of the circle always touched the mouse cursor
void draw(){
  stroke(#000000);
  background(#F4F4F4);
  noFill();
  float a = dist(mouseX, mouseY, 320, 320);
  ellipse(320,320,2*a,2*a);
}

//a circle in the middle of the screen that grows
int x = 0;
void draw(){
  background(255);
  fill(255,255,0);
  int a = x++ ;
  ellipse(320, 320, a, a);
  if(a > 640){ //or x > 640
  x = 0; //x是自变量，必须是x归0,a归0无意义
  }
}

//a rectangle moves from left to right screen

int x = 0; // int x = 640;(from right to left)

void setup() {
  size(640, 640);
}

void draw() {
  background(#F4F4F4);
  fill(#FFF708);
  int a = x++; // int a = x--;
  rect(a, 200, 50, 20);
  if(a > 640)  // a <= 0
  {
    x = 0;  //x = 640;
  }
}


// a circle that moves from the left to the right of the screen and that grows

int x = 0;

void setup() {
  size(640, 640);
}

void draw() {
  background(#F4F4F4);
  fill(#FFF708);
  int a = x++;
  ellipse(a, 320, a, a);
  if(a + a/2 > 640 ) //keep the circle on screen
  {
    x = 0;
  }
}
