// press a key 1-8 to change the frame rate. Background switches between black and white.

int hertz = 10;
int colorSwitcher = 0;

void setup() {
  size(300, 300);
}

void draw() {
  frameRate(hertz);
  if (keyPressed) {
    if (key == '1') {
      hertz = 50;
    } else if (key == '2') {
      hertz = 60;
    } else if (key == '3') {
      hertz = 70;
    } else if (key == '4') {
      hertz = 80;
    } else if (key == '5') {
      hertz = 90;
    } else if (key == '6') {
      hertz = 100;
    } else if (key == '7') {
      hertz = 110;
    } else if (key == '8') {
      hertz = 120;
    }
  }
  
  colorSwitcher++;
  if (colorSwitcher%2 == 1) {
    background(0);
  } else {
    background(255);
  }
}