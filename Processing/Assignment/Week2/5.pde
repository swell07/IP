//5-1 drawing lines when mousePressed
void setup() {
  size(640, 640);
  background(255);
}

void draw() {
  if (mousePressed == true) {
    stroke(0);
    line(pmouseX, pmouseY, mouseX, mouseY);
    }
  }


//5-2 pacman
float x = 320.0;
float y = 320.0;//must be global variables

void setup() {
  size(640, 640);
}

void draw() {
  background(255);

  if (mousePressed == false) {
    move();
  }
  if (mousePressed == true) {
    back();
  }

  //rotate & pacman draws here
  float a = atan2(mouseY-y, mouseX-x);
  fill(152);
  arc(x, y, 100, 100, a, a+PI+HALF_PI+QUARTER_PI, PIE);
}

void move() {
  float v = 5.0;
  float d = dist(x, y, mouseX, mouseY);
  if ((x != mouseX) && (y != mouseY)) {
    x = x - v*(x-mouseX)/d;
    y = y - v*(y-mouseY)/d;
  }
}

void back() {
  float v = 5.0;
  float d = dist(x, y, mouseX, mouseY);
  if ((x != 320.0) && (y != 320.0)) {
    x = x + v*(x-mouseX)/d;
    y = y + v*(y-mouseY)/d;
  }
}

//5-3 moving rectangle,keycode
int x = 200;
int y = 200;//must be global variables

void setup() {
  size(640, 640);
}

void draw() {
  background(255);
  fill(255, 255, 0);
  rect(x, y, 100, 50);
}

void keyPressed(){ //keycode functions
    if (key == CODED) {
      if (keyCode == UP) {
        y = y - 1;
      }
      if (keyCode == DOWN) {
        y = y + 1;
      }
      if (keyCode == LEFT) {
        x = x - 1;
      }
      if (keyCode == RIGHT) {
        x = x + 1;
      }
    }
  }
