void setup() {
  size(648, 648);
  background(255);
  noSmooth();
  sierpinskiCarpet(0, 0, width);
}


void sierpinskiCarpet(int x, int y, int size) {
  int nextSize = size/3;
  noStroke();
  fill(0);
  rect(x+nextSize, y+nextSize, nextSize, nextSize);

  if (nextSize > 7) {
    sierpinskiCarpet(x, y, nextSize);
    sierpinskiCarpet(x + nextSize, y, nextSize);
    sierpinskiCarpet(x + 2 * nextSize, y, nextSize);
    sierpinskiCarpet(x, y + nextSize, nextSize);
    sierpinskiCarpet(x + 2 * nextSize, y + nextSize, nextSize);
    sierpinskiCarpet(x, y + 2 * nextSize, nextSize);
    sierpinskiCarpet(x + nextSize, y + 2 * nextSize, nextSize);
    sierpinskiCarpet(x + 2 * nextSize, y + 2 * nextSize, nextSize);
  }
}
