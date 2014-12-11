void setup() {
  size(640, 360);
  noStroke();
  noLoop();
}

void draw() {
  drawCircle(width/2, 280, 6);
}

//drawCircle is a recursive function, keep returing or calling itself!!!!
void drawCircle(int x, int radius, int level) {                    
  float tt = 126 * level/4.0;
  fill(tt);
  ellipse(x, height/2, radius*2, radius*2);      
  if(level > 1) {
    level = level - 1;
    drawCircle(x - radius/2, radius/2, level);
    drawCircle(x + radius/2, radius/2, level);
  }
}
