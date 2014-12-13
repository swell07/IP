int size = 30;

void setup() {
  size(600, 600);
  frameRate(10);
}

//with while loop
void draw() {
  background(255);
  int x = 0;
  while (x < width) {
    int y = 0;
    while (y < height) {
      noStroke();
      fill(randomColor()); 
      rect(x, y, size, size);
      y += size;
    }
    x += size;
  }
}

/* with for loops
 void draw() {
 background(255); 
 for (int x = 0; x < width; x += size) {
 for (int y = 0; y < height; y += size) {
 noStroke();
 fill(randomColor());
 rect(x, y, size, size);
   }
  }
 }
 */

color randomColor() {
  return color(random(255), random(255), random(255), random(255));
}
