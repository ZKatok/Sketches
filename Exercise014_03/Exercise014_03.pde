void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  if (mousePressed) {
    if (mouseButton == LEFT) {
      stroke(230);
      ellipse(mouseX, mouseY, 20, 20);
    } else if (mouseButton  == CENTER) {
      stroke(170);
      triangle(mouseX, mouseY-11, mouseX+10, mouseY+6, mouseX-10, mouseY+6);
    } else if (mouseButton == RIGHT) {
      stroke(85);
      rectMode(CENTER);
      rect(mouseX, mouseY, 20, 20);
    }
  }
}