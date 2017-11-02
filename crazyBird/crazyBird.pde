// click to restart

<<<<<<< HEAD
int mode = 0; // clicking different buttons in start screen will change this and determine the mode
PImage bird;
PImage justBird;

void setup() {
  bird = loadImage("screamingBird.png"); // bird on branch
  justBird = loadImage("screamingBird copy.png"); // just the bird
  size(500, 350);
  background(255);
}

void draw() {
  startScreen();
  if (mousePressed == true) {
    if (mouseX < width/2) {
      mode = 1;
    } else if (mouseX > width/2) {
      mode = 2;
    }
  }
  if (mode == 1) {
    noStroke();
    fill(255);
    rect(0, 0, width, height);
    mode1();
  } else if (mode == 2) {
    noStroke();
    fill(255);
    rect(0, 0, width, height);
    mode2();
  }
}

void startScreen() {
  fill(250, 255, 0);
  rect(0, 0, width/2, height);
  fill(183, 0, 255);
  rect(width/2, 0, width/2, height);
}

void mode1() {
  frameRate(40);
  fill(0);
  textSize(30);
  for (int i = 0; i < 10; i++) {
    text("A", random(500), random(350));
  }
  image(bird, random(-5, 5), 0);
  if (mousePressed == true) {
    background(255);
    image(bird, 0, 0);
  }
}

void mode2() {
  frameRate(12);
  for (int x = -3; x < width; x += 20) {
    for (int y = -2; y < height+25; y += 25) {
      fill(0);
      textSize(30);
      text("A", x, y);
    }
  }
  for (int j = 0; j < 4; j++) {
    image(justBird, random(-200, 200), random(-200, 200));
  }
=======
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
>>>>>>> cd8bd9f33dc6cb17f4c111c1acda0531ac1f9b58
}