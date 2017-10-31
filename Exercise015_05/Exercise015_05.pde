// press any key to make a mAgIcAl sQuArE appear!!!
// coded keys change the font

int hueRect = 0;
PFont font;

void setup() {
  font = createFont("Baskerville", 48);
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


  if (key == CODED) {
    if (keyCode == BACKSPACE) {
      font = createFont("Apple-Chancery.ttf", 48);
    } else if (keyCode == ENTER || key == RETURN) {
      font = createFont("Avenir-BookOblique", 48);
    } else if (keyCode == TAB) {
      font = createFont("Baskerville", 48);
    }
  } else {
    fill(hueRect, 100, 100);
    textFont(font);
    text(key, 30, 100);
    rect(width/2, height/2, width/2, height/2);
  }
}

void keyReleased() {
  background(0);
}