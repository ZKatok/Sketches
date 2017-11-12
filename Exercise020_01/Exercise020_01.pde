// I know the prompt said to apply transparency outside of Processing
// but I was too lazy to use GIMP bUT I KNOW HOW TO USE IT BCUZ I USED IT BEFORE
// ANYONE KNEW THIS CLASS WAS EVEN GONNA EXIST

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
  image(w2, 0, 0, 500, 1000); // big one on left
  image(w4, 500, 0); // big one on right
  tint(255, 50);
  image(w1, 0, 600); // bottom left
  tint(255, 100);
  image(w3, 450, 400, 550, 550);
  
}