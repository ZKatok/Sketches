/* Zoa Katok
   Exercise 31.1
   A demonstration of noise(). Three white dots dance around a central point
   as the cursor is moved, almost like moths around a light.
 */

void setup() {
  size(500, 500);
  noCursor();
  noStroke();
}

void draw() {
  background(0);
  fill(255, 0, 0); // red
  ellipse(mouseX, mouseY, 7, 7);
  
  float xnoise = noise(mouseX);
  float xnoise1 = noise(mouseX+1);
  float xnoise2 = noise(mouseX+2);
  float ynoise = noise(mouseY);
  float ynoise1 = noise(mouseY+1);
  float ynoise2 = noise(mouseY+2);
  // having 1 and 2 added to mouseX and mouseY allows for two of the white dots
  // to be in different places from the first white dot
  
  fill(255); // white
  ellipse(mouseX+(xnoise*80)-40, mouseY+(ynoise*80)-40, 5, 5);
  ellipse(mouseX+(xnoise1*80)-40, mouseY+(ynoise1*80)-40, 5, 5);
  ellipse(mouseX+(xnoise2*80)-40, mouseY+(ynoise2*80)-40, 5, 5);
}