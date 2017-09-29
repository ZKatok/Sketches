void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  if (keyPressed) {
    frameRate(10);
  } else {
    frameRate(60);
  }
  if (mousePressed) {
    stroke(150);
    triangle(mouseX, mouseY, mouseX+10, mouseY+17, mouseX-10, mouseY+17);
  }
}