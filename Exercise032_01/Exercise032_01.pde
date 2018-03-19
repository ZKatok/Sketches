float deg = 360;
float radius;
float angle;
float x;
float y;
float targetx;
float targety;

void setup() {
  size(500, 500);
  noStroke();
  frameRate(30);
  background(0);
  radius = width/2;
}

void draw() {
  fill(0, 12);
  rect(0, 0, width, height);

  fill(255);
  deg += 20;
  angle = radians(deg);
  x = (width/2) + (cos(angle) * radius);
  y = (height/2) + (sin(angle) * radius);
  ellipse(x, y, 10, 10);

  radius = radius / 1.05;
  if (radius == 1) {
    radius = width/2;
  } else {
    radius /= 1.05;
  }

  println(targetx, targety);
}
