void setup() {
  size(640, 640);
  background(255);//white
  strokeWeight(5);
}

void draw() {
  //yellow circle in the middle of the screen
  fill(255, 255, 0); 
  ellipse(320, 320, 100, 100);
  //rectagle
  fill(255, 0, 0);
  rect(1, 1, 80, 50);
  //house
  noFill();
  quad(100, 400, 200, 400, 240, 450, 60, 450); // four-angles
  rect(60, 450, 180, 70);//width,height
  rect(105, 470, 30, 50);//door
  rect(160, 465, 40, 20);//window
  rect(180, 385, 10, 15);
  ellipse(193, 370, 8, 5);
  ellipse(200, 360, 13, 7);

  //banana
  arc(400, 200, 100, 100, 0, PI+QUARTER_PI, PIE);

  //smile face
  ellipse(500, 500, 150, 150);
  noFill();//eyebrown
  arc(470, 500, 70, 90, PI+QUARTER_PI, PI+HALF_PI);
  arc(530, 500, 70, 90, PI+HALF_PI, PI+HALF_PI+QUARTER_PI);
  arc(490, 490, 90, 90, QUARTER_PI, HALF_PI);
  point(470, 490);
  point(530, 490);
}
