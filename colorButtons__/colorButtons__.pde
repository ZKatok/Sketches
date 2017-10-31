color black = color(0);
color orange = color(255, 115, 0);
color yellow = color(250, 255, 0);
color blue = color(0, 116, 255);
color purple = color(237, 0, 255);
color a1 = black; 
color a2 = black; 
color a3 = black; 
color a4 = black;
color a5 = black;
color a6 = black;
color a7 = black;

void setup() {
  size(700, 460);
  background(0);
}

void draw() {
  frameRate(8);
  getThemCircles();
  getThemColors();
}

void getThemCircles() {
  strokeWeight(3);

  // first row
  fill(a1);
  ellipse(50, 50, 100, 100);
  noFill();
  ellipse(150, 50, 100, 100);
  ellipse(250, 50, 100, 100);
  ellipse(350, 50, 100, 100);
  ellipse(450, 50, 100, 100);
  ellipse(550, 50, 100, 100);
  ellipse(650, 50, 100, 100);

  // second row
  ellipse(100, 140, 100, 100);
  ellipse(200, 140, 100, 100);
  ellipse(300, 140, 100, 100);
  ellipse(400, 140, 100, 100);
  ellipse(500, 140, 100, 100);
  ellipse(600, 140, 100, 100);

  // third row
  ellipse(50, 230, 100, 100);
  ellipse(150, 230, 100, 100);
  ellipse(250, 230, 100, 100);
  ellipse(350, 230, 100, 100);
  ellipse(450, 230, 100, 100);
  ellipse(550, 230, 100, 100);
  ellipse(650, 230, 100, 100);

  // fourth row
  ellipse(100, 320, 100, 100);
  ellipse(200, 320, 100, 100);
  ellipse(300, 320, 100, 100);
  ellipse(400, 320, 100, 100);
  ellipse(500, 320, 100, 100);
  ellipse(600, 320, 100, 100);

  // fifth row
  ellipse(50, 410, 100, 100);
  ellipse(150, 410, 100, 100);
  ellipse(250, 410, 100, 100);
  ellipse(350, 410, 100, 100);
  ellipse(450, 410, 100, 100);
  ellipse(550, 410, 100, 100);
  ellipse(650, 410, 100, 100);
}

void getThemColors() {
  if (mousePressed == true) {
    if (mouseX < 100 && mouseY < 100) {
      if (a1 == black) {
        a1 = orange;
      } else if (a1 == orange) {
        a1 = yellow;
      } else if (a1 == yellow) {
        a1 = blue;
      } else if (a1 == blue) {
        a1 = purple;
      } else if (a1 == purple) {
        a1 = black;
      }
    }
  }
}