/*
  Change text size with 1-9.
  Change text color with h.
  Text position is determined by mouse position.
*/

int textsize = 10;
int fillhue;
PFont lucidaHandwriting;

void setup() {
  size(600, 500);
  colorMode(HSB, 360, 100, 100);
  lucidaHandwriting = createFont("LucidaHandwriting-Italic", 10);
}

void draw() {
  background(0);
  fill(fillhue, 100, 100);
  textFont(lucidaHandwriting);
  textSize(textsize);
  text("generic text", mouseX, mouseY);
}

void keyPressed() {
  if (key == '1') {
    textsize = 10;
  } else if (key == '2') {
    textsize = 20;
  } else if (key == '3') {
    textsize = 30;
  } else if (key == '4') {
    textsize = 40;
  } else if (key == '5') {
    textsize = 50;
  } else if (key == '6') {
    textsize = 60;
  } else if (key == '7') {
    textsize = 70;
  } else if (key == '8') {
    textsize = 80;
  } else if (key == '9') {
    textsize = 90;
  } else if (key == 'h') {
    if (fillhue == 360) {
      fillhue = 0;
    } else {
      fillhue += 5;
    }
  }
}