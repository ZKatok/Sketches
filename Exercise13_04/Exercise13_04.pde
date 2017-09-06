/* If mouseX is in the left third of the screen, the square will move left.
 * If mouseX is in the middle third of the screen, the square will not move in the X direction.
 * If mouseX is in the right third of the screen, the square will move right.
 *
 * If mouseY is in the top third of the screen, the square will move up.
 * If mouseY is in the middle third of the screen, the square will not move in the Y direction.
 * If mouseY is in the bottom third of the screen, the square will move down.
 *
 * While the mouse is pressed, the color of the square will cycle through the rainbow.
 */

int rectX = 201;
int moveRectX = 0;
int rectY = 100;
int moveRectY = 0;
int rectHue = 0;

void setup() {
  size(402, 402);
  colorMode(HSB, 300, 100, 100);
}

void draw() {
  background(0, 0, 100);
  rectX = rectX + moveRectX;
  rectY = rectY + moveRectY;

  fill(rectHue, 100, 100);
  rect(rectX, rectY, 50, 50);

  if (mouseX < width/3) {
    moveRectX = 1;
  } else if (mouseX > 2*width/3) {
    moveRectX = -1;
  } else {
    moveRectX = 0;
  }

  if (mouseY < height/3) {
    moveRectY = 1;
  } else if (mouseY > 2*height/3) {
    moveRectY = -1;
  } else {
    moveRectY = 0;
  }

  if (rectX > 402) {
    rectX = 0;
  } else if (rectX < -49) {
    rectX = 402;
  }
  
  if (rectY > 402) {
    rectY = 0;
  } else if (rectY < -49) {
    rectY = 402;
  }
  
  if (mousePressed) {
    rectHue++;
  }
  if (rectHue > 300) {
    rectHue = 0;
  }
}