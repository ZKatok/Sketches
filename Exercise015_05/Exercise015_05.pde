// press any key to make a mAgIcAl sQuArE appear!!!
// coded keys change the font
<<<<<<< HEAD
=======
NOT DONE
>>>>>>> cd8bd9f33dc6cb17f4c111c1acda0531ac1f9b58

int hueRect = 0;
PFont font;

void setup() {
<<<<<<< HEAD
  font = createFont("Baskerville", 48);
=======
  font = createFont("Baskerville.vlw", 48);
>>>>>>> cd8bd9f33dc6cb17f4c111c1acda0531ac1f9b58
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

<<<<<<< HEAD

  if (key == CODED) {
    if (keyCode == BACKSPACE) {
      font = createFont("Apple-Chancery.ttf", 48);
    } else if (keyCode == ENTER || key == RETURN) {
      font = createFont("Avenir-BookOblique", 48);
    } else if (keyCode == TAB) {
=======
  fill(hueRect, 100, 100);
  rect(width/2, height/2, width/2, height/2);

  if (key == CODED) {
    if (key == BACKSPACE) {
      font = createFont("Apple-Chancery", 48);
    } else if (key == ENTER || key == RETURN) {
      font = createFont("Avenir-BookOblique", 48);
    } else if (key == TAB) {
>>>>>>> cd8bd9f33dc6cb17f4c111c1acda0531ac1f9b58
      font = createFont("Baskerville", 48);
    }
  } else {
    fill(hueRect, 100, 100);
    textFont(font);
    text(key, 30, 100);
<<<<<<< HEAD
    rect(width/2, height/2, width/2, height/2);
=======
>>>>>>> cd8bd9f33dc6cb17f4c111c1acda0531ac1f9b58
  }
}

void keyReleased() {
  background(0);
<<<<<<< HEAD
}
=======
}
>>>>>>> cd8bd9f33dc6cb17f4c111c1acda0531ac1f9b58
