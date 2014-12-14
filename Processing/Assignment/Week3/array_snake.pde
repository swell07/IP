int num = 50;
int[] xpos = new int[num];
int[] ypos = new int[num];

void setup() {
  size(640, 640);
  smooth();
  for (int i = 0; i < xpos.length; i++) {
    xpos[i] = 0;
    ypos[i] = 0;
  }
}

void draw() {
  background(255);
  for (int i = 0; i < xpos.length - 1; i++) {
    xpos[i] = xpos[i+1]; //交替，所以一直只保留最近50个点
    ypos[i] = ypos[i+1];
  }
  xpos[xpos.length - 1] = mouseX;
  ypos[xpos.length - 1] = mouseY;

  for (int i = 0; i < xpos.length; i++) {
    fill(255 - i*5);
    noStroke();
    ellipse(xpos[i], ypos[i], i, i);
  }
}
