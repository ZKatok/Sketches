int n = 0;
char[] writing = new char[100];

void setup() {
  size(600, 400);
  background(0);
}

void draw() {
  fill(255);
  text(writing, 0, n, 10, 10);
}

void keyPressed() {
  writing[n] = key;
  n += 1;
}

void mousePressed() {
  n = 0;
  writing = new char[n];
}