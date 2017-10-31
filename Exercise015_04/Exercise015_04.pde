// press any key to make a mAgIcAl sQuArE appear!!!

int hueRect = 0;

void setup() {
  size(500, 500);
  colorMode(HSB, 300, 100, 100);
  rectMode(CENTER);
  background(0);
}

void draw() {

}

void keyPressed() {
  // change the square's color every time it's on the screen.
  if (hueRect == 300) {
    hueRect = 0;
  } else {
    hueRect = hueRect+5;
  }
  
  fill(hueRect, 100, 100);
  rect(width/2, height/2, width/2, height/2);
  
  fill(hueRect, 100, 100);
  textSize(90);
  text(key, 30, 100);
}

void keyReleased() {
  background(0);
}