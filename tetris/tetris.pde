

void setup() {
  size(500, 1000);
  background(0);
  for (int i = 50; i < 525; i+=50) {
    stroke(255);
    line(i, 0, i, height);
  }
  for (int j = 50; j < 1025; j+=50) {
    stroke(255);
    line(0, j, width, j);
  }
}