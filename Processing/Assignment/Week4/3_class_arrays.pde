//arrays
int rows = 4; //y
int cols = 5; //x
Spaceship [][] s = new Spaceship[rows][cols]; //2d arrays "grid[y][x]"

void setup() {
  size(600, 600);
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      s[i][j] = new Spaceship(j * 100, i * 100, true);
    }
  }
}

void draw() {
  background(255);
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      if (s[i][j].visible) {
        s[i][j].display();
      }
    }
  }
}

void mouseClicked() {
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      if ((mouseX > j * 100 + 50) && (mouseX < j * 100 +150) && (mouseY > i * 100 + 100) && (mouseY < i * 100 + 200)) {
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
