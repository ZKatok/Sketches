/* Zoa Katok
   Exercise 33_02
   Model of a two-stroke combustion engine:
   a demonstration of mechanical motion.
 */

int radius = 50;
float angle;
float deg = -5;
float cx; // x pos of endpoint moving in a circle
float cy; // y pos of endpoint moving in a circle
float lx; // x pos of endpoint moving in a line
float ly = 217.5; // y pos of enpoint moving in a line
int changely = 1;

void setup() {
  size(300, 400);
  fill(0);
  frameRate(30);
  lx = width/2;
}

void draw() {
  background(255);
  noFill();
  strokeWeight(2);
  ellipse(width/2, height-75, 115, 115); // main circle
  rect(22, 300, 50, 30); // lil' rectangle on left
  rect(72, 267, 155, 120); // big rectangle around main circle
  rect(125, 168, 50, 100); // rectangle on top of main circle
  rect(175, 200, 100, 30); // lil'-ish rectangle on right

  deg += 5;
  angle = radians(deg);
  cx = (width/2) + (cos(angle) * radius);
  cy = (height-75) + (sin(angle) * radius);
  fill(0);
  ellipse(cx, cy, 15, 15);
  
  ly = cy - 107;

  strokeWeight(4);
  line(cx, cy, lx, ly);
}
