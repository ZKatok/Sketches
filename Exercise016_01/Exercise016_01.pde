int addX;
int addY;
int quadX = 0 + addX;
int quadY = 0 + addY;

void setup() {
  size(600, 400);
  background(0);
  fill(255);
  addX++;
  addY++;
}

void draw() {
  quad(quadX, quadY+150, quadX+50, quadY+100, quadX+100, quadY+150, quadX+50, quadY+200);
}