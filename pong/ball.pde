class Ball {
  int d = 20; // diameter
  int px = width/2;
  int py = height/2;
  int ipy; // initial position y
  int v = 1;
  int vx = v;
  int vy = v; // magnitude + direction
  int c = 0;

  Ball(int inity) {
    ipy = inity;
  }
  
  void drawB() {
    strokeWeight(2);
    stroke(c, 100, 100);
    fill(0);
    ellipse(px, py, d, d);
  }

  void move() {
    px += vx;
    py += vy;

    // change direction at wall + paddle
    if ((py - d/2) < 0 || (py + d/2) > height) {
      vy *= -1;
    }
    if ((px) > 30 && (px) < 40 && py > P1.py - (P1.plength/2) && py < P1.py + (P1.plength/2)) { // bounce off left paddle
      vx *= -1;
      hits += 1;
    }
    if ((px) < width-30 && (px) > width-40 & py > P2.py - (P2.plength/2) && py < P2.py + (P2.plength/2)) { // bounce off right paddle
      vx *= -1;
      hits += 1;
    }
  }

  void speedup() {
    if (hits%5 == 0) {
      v += 1;
      vx = -v;
      if (vy < 0) {
        vy = -v;
      } else {
        vy = v;
      }
      m += 1;
      hits += 1;
    }
  }

  void colorChange() {
    c += 1;
    if (c == 150) {
      c = 0;
    }
  }

  void reset() {
    if (px > width) {
      px = width/2;
      py = ipy;
      // reset speedup things
      hits = 0;
      v = 1;
      vx = -v;
      m = 3;
      // change score
      scoreL += 1;
    } 
    if (px < 0) {
      px = width/2;
      py = ipy;
      // reset speedup things
      hits = 0;
      v = 1;
      vx = v;
      m = 3;
      // change score
      scoreR += 1;
    }
  }
}
