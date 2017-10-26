String salve = "q";
String quidAgis = "u";
String bene = "i";
String vale = "d";
String whatever = salve + quidAgis + bene + vale + salve + quidAgis + bene + vale;
int colorControl = 0;

void setup() {
  fullScreen();
  background(0);
  frameRate(20);
}

void draw() {
  colorControl++;
  if (colorControl%2 == 0) {
    fill(186, 0, 255);
  } else {
    fill(240, 0, 0);
  }
  textSize(random(10, 50));
  text(whatever, random(width), random(height));
  print(whatever);
}

void keyPressed() {
  exit();
}