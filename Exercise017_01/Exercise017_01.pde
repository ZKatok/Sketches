String salve = "q";
String quidAgis = "u";
String bene = "i";
String vale = "d";
String whatever = salve + quidAgis + bene + vale + salve + quidAgis + bene + vale;
int control = 0;

void setup() {
  fullScreen();
  background(0);
  frameRate(20);
}

void draw() {
  control++;
  if (control%2 == 0) {
    fill(186, 0, 255);
  } else {
    fill(240, 0, 0);
  }
  if (control%5 == 0) {
    whatever.toUpperCase();
  } else {
    whatever.toLowerCase();
  }
  textSize(random(10, 50));
  text(whatever, random(width), random(height));
  print(whatever);
}

void keyPressed() {
  exit();
}