//arrays
int cols = 5; //x
int rows = 4; //y
Spaceship [][] s = new Spaceship[cols][rows];

void setup() {
  size(600, 600);
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      s[i][j] = new Spaceship(i * 100, j * 100, true);
    }
  }
}

void draw() {
  background(255);
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      if (s[i][j].visible) {
        s[i][j].display();
      }
    }
  }
}

void mouseClicked() {
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      if ((mouseX > i * 100 + 50) && (mouseX < i * 100 +150) && (mouseY > j * 100 + 100) && (mouseY < j * 100 + 200)) {
        s[i][j].visible = false;
      }
    }
  }
}

//class
class Spaceship {
  float x;
  float y;
  boolean visible;

  Spaceship(float x, float y, boolean visible) {
    this.x = x;
    this.y = y;
    this.visible = visible;
  }

  void display() {
    if (visible) {
      fill(0);
      ellipse(x + 100, y + 150, 100, 100);
    }
  }
}
