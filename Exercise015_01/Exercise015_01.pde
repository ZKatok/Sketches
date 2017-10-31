boolean drawRect = false;

void setup() {
  size(500, 500);
  colorMode(HSB, 300, 100, 100);
  rectMode(CENTER);
  background(0);
}

void draw() {
  if (drawRect == true) {
    fill(0, 100, 100);
    rect(width/2, height/2, width/2, height/2);
  }
  else {
    background(0);
  }
}

void keyPressed() {
  drawRect = true;
}

void keyReleased() {
  drawRect = false;
}