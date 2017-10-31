int addcircleX;
int addcircleY;
int circleX = 25;
int circleY = 25;

void setup() {
  size(400, 700);
  background(0);
}

void draw() {
  frameRate(100);
  
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
  
  circleX += addcircleX;
  circleY += addcircleY;
  ellipse(circleX, circleY, 50, 50);
}