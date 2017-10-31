/* This interactive sketch demonstrates HSB color mode. 
The x-axis controls the saturation.
The y-axis controld the brightness.
The hue values of each rectangle increase by 30, with the 
leftmost rectangle having H = 0 and the rightmost having H = 270
(hue range of 0-300)*/

int filler;

void setup() {
  size(500, 500);
  colorMode(HSB, 300, 500, 500);
}

void draw() {
  // draw rectangles of various colors for the background
  // I would have used a for loop but I'm not totally comfortable with those yet.
  noStroke();
  fill(0, mouseX, mouseY);
  rect(0, 0, 50, 500);
  fill(30, mouseX, mouseY);
  rect(50, 0, 50, 500);
  fill(60, mouseX, mouseY);
  rect(100, 0, 50, 500);
  fill(90, mouseX, mouseY);
  rect(150, 0, 50, 500);
  fill(120, mouseX, mouseY);
  rect(200, 0, 50, 500);
  fill(150, mouseX, mouseY);
  rect(250, 0, 50, 500);
  fill(180, mouseX, mouseY);
  rect(300, 0, 50, 500);
  fill(210, mouseX, mouseY);
  rect(350, 0, 50, 500);
  fill(240, mouseX, mouseY);
  rect(400, 0, 50, 500);
  fill(270, mouseX, mouseY);
  rect(450, 0, 50, 500);
}