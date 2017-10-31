int mode = null;

class DanceMove {
  void left() {
    ellipse(50, 50, 100, 100);
  }
  void right() {
    ellipse(1000, 50, 100, 100);
  }
}

void setup() {
  size(1100, 700);
  background(0);
}

void draw() {
  while (mode == 1) {
    DanceMove.left();
  }
}

void keyPressed() {
  if (key == 'a') {
    mode = 1;
  }
  if (key == 'b') {
    mode = 2;
  }
}