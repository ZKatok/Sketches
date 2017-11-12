PImage w1;
PImage w2;
PImage w3;
PImage w4;

void setup() {
  size(1000, 1000);
  w1 = loadImage("william1.jpg");
  w2 = loadImage("william2.png");
  w3 = loadImage("william3.jpg");
  w4 = loadImage("william4.jpg");
}

void draw() {
  tint(208, 0, 255); // purple
  image(w2, 0, 0, 500, 1000); // big one on left
  tint(0, 244, 255); // light blue
  image(w4, 500, 0); // big one on right
  tint(255, 146, 0, 50); // orange
  image(w1, 0, 600); // bottom left
  tint(250, 255, 0, 100); // yellow
  image(w3, 450, 400, 550, 550);
  
}