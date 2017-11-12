// click on a part of the image to set the color of your drawing tool
// click somewhere else to start drawing
// click somewhere else again to stop drawing
// press any key to clear the screen

PImage pic;
color c;
boolean drawer = false;

void setup() {
  size(1400, 800);
  frameRate(100);
  background(255);
  pic = loadImage("colorsss.jpg");
}

void draw() {
  image(pic, 0, 0, width/3, height/3);
  if (drawer == true) {
    if (mouseX > width/3 || mouseY > height/3) {
      noStroke();
      fill(c);
      ellipse(mouseX, mouseY, 10, 10);
    }
  }
}

void mousePressed() {
  if (mouseX < width/3 && mouseY < height/3) { // set color to whatever you click in the picture
    c = get(mouseX, mouseY);
  } else { // toggle whether you're drawing or not drawing
    if (drawer == false) {
      drawer = true;
    } else {
      drawer = false;
    }
  }
}

void keyPressed() { // clear screen
  background(255);
  image(pic, 0, 0, width/3, height/3);
}