/* Three different pairs of opposite colors are displayed by pressing either 1, 2, or 3.*/

color color1;
color color2;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  if (keyPressed) {
    if (key == '1') {
      color1 = color(180, 0, 0);
      color2 = color(50, 123, 0);
    }
    if (key == '2') {
      color1 = color(220, 50, 0);
      color2 = color(0, 0, 120);
    }
    if (key == '3') {
      color1 = color(254, 252, 0);
      color2 = color(86, 0, 116);
    }
  }
  fill(color1);
  rect(100, 100, 150, 300);
  fill(color2);
  rect(250, 100, 150, 300);
}