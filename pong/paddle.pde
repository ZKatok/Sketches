class Paddle {
  int px;
  int py = height/2;
  int plength = 80;

  Paddle(int xpos) {
    px = xpos;
  }

  void drawP() {
    strokeWeight(2);
    stroke(100);
    fill(0);
    rect(px, py, 15, plength);
  }

  void move(int x) {
    if (py < (plength/2)) {
      py = plength/2;
    } else if (py > height - (plength/2) + 1) {
      py = height - (plength/2);
    } else {
      py += x;
    }
  }
}
