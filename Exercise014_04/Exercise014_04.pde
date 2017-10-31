void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  stroke(150);
  triangle(mouseX, mouseY, mouseX+10, mouseY+17, mouseX-10, mouseY+17);
  triangle(pmouseX, pmouseY, pmouseX+10, pmouseY+17, pmouseX-10, pmouseY+17);
}