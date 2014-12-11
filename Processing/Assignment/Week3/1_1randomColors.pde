int numCirc = 20;

float ellipseSize = 20.0;
float ellipseSpace = 10.0;

color [] colors = new color[numCirc];

void setup() {
  size(640, 640);
  background(255);
  for (int i = 0; i < colors.length; i++) {
    colors[i] = randomColor();
  }
}

void draw() {
  for (int i = 0; i < colors.length; i++) {
    float xPos = (i+1)*ellipseSize + i*ellipseSpace;
    float yPos = 320.0;

    noStroke();
    fill(colors[i]);
    ellipse(xPos, yPos, ellipseSize, ellipseSize);
  }
}

color randomColor() {  //type of function 
  return color(random(1)*255, random(1)*255, random(1)*255);
}
