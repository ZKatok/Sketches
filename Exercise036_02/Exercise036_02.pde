void setup() {
  size (500, 500);
  colorMode(HSB, 100, 100, 100);
  background(100);
}

void draw() {
  stroke(50);
  line(width/2, 0, width/2, height);
}

void mousePressed() {
  if (mouseX <= width/2) {
    background(100);
    lines(map(mouseY, 0, 500, 0, 100));
  } else {
    background(0);
    lines(map(mouseY, 0, 500, 0, 100), map(mouseX, 251, 500, 1, 10));
  }
}

void lines(float hue) {
  stroke(hue, 100, 100);
  strokeWeight(3);
  for(int i = 0; i < 501; i += 30) {
    line(0, i, width, i);
  }
}

void lines(float hue, float weight) {
  stroke(hue, 100, 100);
  strokeWeight(weight);
  for(int i = 0; i < 501; i += weight*10) {
    line(0, i, width, i);
  }
}
