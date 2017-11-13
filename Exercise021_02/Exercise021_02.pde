PImage fruit;
PImage f1;
PImage f2;
PImage f3;
PImage mask1;
PImage mask2;
PImage mask3;
int c = 0;
int adder;

void setup() {
  size(690, 1000);
  fruit = loadImage("fruitbowl.jpg");
  f1 = loadImage("fruitbowl.jpg");
  f2 = loadImage("fruitbowl.jpg");
  f3 = loadImage("fruitbowl.jpg");
  mask1 = loadImage("mask1.jpg");
  mask2 = loadImage("mask2.jpg");
  mask3 = loadImage("mask3.jpg");
  f1.mask(mask1);
  f2.mask(mask2);
  f3.mask(mask3);
}

void draw() {
  if (c == 0) {
    adder = 1;
  } 
  if (c == 255) {
    adder = -1;
  }
  c += adder;
  background(c);

  image(mask1, 0, 250);
  image(mask2, 0, 500);
  image(mask3, 0, 750);
  image(fruit, 345, 0);
  image(f1, 345, 250);
  image(f2, 345, 500);
  image(f3, 345, 750);
}