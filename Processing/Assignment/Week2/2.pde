//draw five circles next to each other horizontally
void setup() {
  size(640, 640);
}

void draw() {
  background(255);
  for (int a = 1; a <= 5; a++) {
    ellipse(a * 100, 200, 100, 100);
  }
}

//Draw a 5x5 grid of circles 
void setup() {
  size(640, 640);
}

void draw() {
  background(255);
  for (int a = 1; a <= 5; a++) { //oders of for loops (1,1/1,2/...1,5 /2,1/2,2...2,5....) b loop完才有 a loop
    for (int b = 1; b <=5; b++) {
      ellipse(a * 100, b*100, 100, 100);
    }
  }
}

//Draw the bottom left half (a triangle) of a 5x5 grid
void setup() {
  size(640, 640);
}

void draw() {
  background(255);
  for (int a = 1; a <= 5; a++) {
    for (int b = a; b <=5; b++) { // loops (1,1/1,2...1,5/ 2,2/2,3...2,5/ 3,3..)
      ellipse(a * 100, b*100, 100, 100);
      println(a, b);
    }
  }
}
