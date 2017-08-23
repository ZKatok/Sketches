/* grayscale */

int colorx = 0;
int increase;

void setup() {
  size(300, 300);
}

void draw() {
  colorx = colorx + increase;
  if (colorx == 0) {
    increase = 1;
  } 
  if (colorx == 255) {
    increase = -1;
  } 
  println(colorx);
  background(colorx);
}