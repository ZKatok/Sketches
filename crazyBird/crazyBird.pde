// click to restart

PImage bird;

void setup() {
  size(500, 350);
  background(255);
  bird = loadImage("screamingBird.png");
}

void draw() {
  fill(0);
  textSize(30);
  text("A", random(500), random(350));
  image(bird, 0, 0);
}

void mousePressed() {
  background(255);
  image(bird, 0, 0);
}