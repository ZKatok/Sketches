/* This program draws a different shape depending on which key you press.
You can press 1, 2, or 3.
I think this counts as a vanishing point because I used equations that are for
intersecting lines so I'm going with it. */

float x;
float y;

void setup() {
  size(600, 600);
  background(0);
  rectMode(CORNERS);
}

void draw() {
  // choose which shape
  if (keyPressed) {
    if (key == '1') {
      background(200, 0, 150);
      x = 300;
      y = 450;
    }
    if (key == '2') {
      background(83, 70, 240);
      x = 200;
      y = 300;
    }
    if (key == '3') {
      background(165);
      x = 395;
      y = 350;
    }
  }
  if (x > 100) {
    stroke(x - 100);
    fill(x);
    rect(x, 3*x/2, y, y/4);
    x = x - 1;
    y = y - 1;
  }
}