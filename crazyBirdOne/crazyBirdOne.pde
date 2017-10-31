PImage bird;

void setup() {
  size(500, 350);
  background(255);
  bird = loadImage("screamingBird.png");
}

void draw() {
  background(255);
  fill(0);
  textSize(20);
  text("A", random(500), random(350));
  image(bird, random(7), random(7));
}

void mousePressed() {
  background(255);
  image(bird, 0, 0);
}