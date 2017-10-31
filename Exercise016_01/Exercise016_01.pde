<<<<<<< HEAD
// press any key to restart the drawing
// press the mouse to switch the trail from having just black 
//   to having varying shades of gray.

=======
>>>>>>> cd8bd9f33dc6cb17f4c111c1acda0531ac1f9b58
int addcircleX;
int addcircleY;
int circleX = 25;
int circleY = 25;
<<<<<<< HEAD
int hue;
int gray;
int addgray;
boolean toggleGray = false;
=======
>>>>>>> cd8bd9f33dc6cb17f4c111c1acda0531ac1f9b58

void setup() {
  size(400, 700);
  background(0);
<<<<<<< HEAD
  colorMode(HSB, 360, 100, 100);
=======
>>>>>>> cd8bd9f33dc6cb17f4c111c1acda0531ac1f9b58
}

void draw() {
  frameRate(100);
<<<<<<< HEAD

=======
  
>>>>>>> cd8bd9f33dc6cb17f4c111c1acda0531ac1f9b58
  if (circleX == 25) {
    addcircleX = 1;
  }
  if (circleX == 375) {
    addcircleX = -1;
  }
  if (circleY == 25) {
    addcircleY = 1;
  }
  if (circleY == 675) {
    addcircleY = -1;
  }
<<<<<<< HEAD

  if (hue == 360) {
    hue = 0;
  } else {
    hue += 1;
  }
  if (mousePressed) {
    toggleGray = !toggleGray;
  }

  if (toggleGray == false) {
    gray = 0;
  } else {
    gray += addgray;
    if (gray == 0) {
      addgray = 1;
    } else if (gray == 360) {
      addgray = -1;
    }
  }

    circleX += addcircleX;
    circleY += addcircleY;
    fill(hue, 100, 100);
    stroke(gray);
    ellipse(circleX, circleY, 50, 50);
  }

  void keyPressed() {
    background(0);
    circleX = 25;
    circleY = 25;
  }
=======
  
  circleX += addcircleX;
  circleY += addcircleY;
  ellipse(circleX, circleY, 50, 50);
}

void keyPressed() {
  background(0);
  circleX = 25;
  circleY = 25;
}
>>>>>>> cd8bd9f33dc6cb17f4c111c1acda0531ac1f9b58
