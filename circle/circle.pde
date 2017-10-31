float circleX;
float circleY = 150;
boolean adder;

void setup() {
  size(500, 500);
  background(125);
}

void draw() {
  if (circleY == 150) {
    adder = true;
  }
  if (circleY == 350) {
    adder = false;
  }
  if (adder == true) {
    circleY += 1;
  } else {
    circleY -= 1;
  }
  
  circleX = -250 + sqrt(sq(-circleY) + 500*circleY - 52500);
  noStroke();
  fill(255);
  ellipse(circleX, circleY, 50, 50);
  println("circleX = "+circleX);
  println("circleY = "+circleY);
}