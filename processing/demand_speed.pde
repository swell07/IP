class Demand {
  float x, y;
  color c;
  int speed;
  float xspeed, yspeed;

  Demand(float nx, float ny, color nc, int nspeed ) {
    x = nx;
    y = ny;
    c = nc;
    speed = nspeed;
  }

  void move() {
    
     xspeed = ((int)random(-2, 2))*speed;
     yspeed = ((int)random(-2, 2))*speed;

     x+= xspeed;
     y+= yspeed;

    if (x > width || x < 0 ) {
      xspeed = -xspeed;
    } else {
      if ((x == 100 || x == 300) && ((y >= 50)&&(y <= 350))) {
        //|| ((x > 50)&&(x < 300) && (y > 0)&&(y < 250))) {
        xspeed = -xspeed;
      }
    }

    if (y > height || y < 0 ) {
      yspeed = -yspeed;
    } else {
      if ((y == 100 || y == 300) && ((x >= 50) && (x <=350))) {
        yspeed = -yspeed;
      }
    }
  }
  
  void display() {
    stroke(c);
    fill(0);
    rect(x+1, y+1, grid_size-2, grid_size-2);
  }

  void update() {
    stroke(c);
    fill(c);
    rect(x+1, y+1, grid_size-2, grid_size-2);
  }


  boolean test_demand_pos(float demand_x, float demand_y) {
    if (((demand_x >= grid_size)&&(demand_x <= grid_size*5)) && ((demand_y >= 0)&&(demand_y < grid_size*4)) ) {
      return true;
    } else {
      return false;
    }
  }

  boolean test_demand_color(color demand_c) {
    if (demand_c == #FAFF0D) {
      return true;
    } else {
      return false;
    }
  }


  public float get_x() {
    return x;
  }
  public float get_y() {
    return y;
  }
  public color get_c() {
    return c;
  }
}
