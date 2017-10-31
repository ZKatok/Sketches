int backFill = 0;
int backAdd;
int rectFill = 500;
int rectAdd;
int rect2Fill = 250;
int rect2Add = 1;

void setup() {
  size(400, 400);
  colorMode(HSB, 500, 500, 500);
  rectMode(CENTER);
}

void draw() {
  // make background change colors by changing the hue value
  backFill = backFill + backAdd;
  if (backFill == 0) {
    backAdd = 1;
  }
  if (backFill == 500) {
    backAdd = -1;
  }
  background(backFill, 400, 500);
  
  // make bigger square in middle change colors by changing the hue value
  rectFill = rectFill + rectAdd;
  if (rectFill == 500) {
    rectAdd = -1;
  }
  if (rectFill == 0) {
    rectAdd = 1;
  }
  noStroke();
  fill(rectFill, 400, 500);
  rect(200, 200, 250, 250);
  
  // make smol square in middle change colors by changing the hue value
  rect2Fill = rect2Fill + rect2Add;
  if (rect2Fill == 500) {
    rect2Add = -1;
  }
  if (rect2Fill == 0) {
    rect2Add = 1;
  }
  noStroke();
  fill(rectFill, 400, 500);
  rect(200, 200, 150, 150);
}