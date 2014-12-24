void movement() {
    //KIM LEFT/RIGHT MOVEMENT
    if (x <= width - 40 && keyCode == RIGHT && moving == false && keyPressed) {
      moving = true;
      vx = 40;
      stop = false;
    } else if (x >= 0 && keyCode == LEFT && moving == false && keyPressed) {
      moving = true;
      vx = -40;
      stop = true;
    } else {
      moving = false;
    }

    if (moving == true) {
      x = x+vx;
    }

   
    //KIM DIRECTION
    if (stop == true) {
      KimL(x, y);
    } else if (stop == false) {
      KimR(x, y);
    }
  }
}
