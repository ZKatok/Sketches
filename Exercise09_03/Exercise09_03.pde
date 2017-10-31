/* This program demonstrates color triads.
 * Move your mouse across the display window to change the colors of the circles.
 */

int hue2;
int hue3;

void setup() {
  size(300, 300);
  background(0);
  colorMode(HSB, 300, 100, 100);
  noStroke();
}

void draw() {
  fill(mouseX, 100, 100);
  ellipse(60, 150, 75, 75);

  if (mouseX > 200) {
    hue2 = mouseX + 100 - 300;
  } else {
    hue2 = mouseX + 100;
  }
  fill(hue2, 100, 100);
  ellipse(150, 150, 75, 75);

  if (mouseX > 100) {
    hue3 = mouseX + 200 - 300;
  } else {
    hue3 = mouseX + 200;
  }
  fill(hue3, 200, 200);
  ellipse(240, 150, 75, 75);
}