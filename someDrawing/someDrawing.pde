/* someDrawing by Zoa Katok
   
   An exercise using conditionals, variables, color, and shapes.
   This is drawing program using circles.
   
   To change size: 1-8; the diameter of the
   circle will be the number you press times 10.
   no default size; to start drawing, you must choose a number.
   
   To change color: r-red o-orange y-yellow
   g-green b-blue v-violet p-pink w-white
   c-gray(c for charcoal) d-black(d for dark)
   default color: black
   
   If you press l, the circles will be outlined;
   if you press n, the circles will not be outlined.
   default: 
   
   The mouse must be pressed in order to draw. 
   
   Press x to clear the page.
   
   Enjoy!*/

int a;
color x;
color y;
boolean z;

void setup() {
  size(500, 500);
  background(255);
}

void draw() {

  //change color of circle
  if (keyPressed) {
    if (key == 'd') {
      x = color(0);
    }
    if (key == 'h') {
      x = color(127);
    }
    if (key == 'w') {
      x = color (255);
    }
    if (key == 'r') {
      x = color(255, 0, 0);
    }
    if (key == 'o') {
      x = color(255, 140, 0);
    }
    if (key == 'y') {
      x = color(255, 255, 0);
    }
    if (key == 'g') {
      x = color(50, 205, 50);
    }
    if (key == 'b') {
      x = color(0, 0, 255);
    }
    if (key == 'v') {
      x = color(138, 43, 226);
    }
    if (key == 'p') {
      x = color(255, 0, 230);
    }
  }
  
  //change size of circle
  if (keyPressed) {
    if (key == '1') {
      a = 10;
    }
    if (key == '2') {
      a = 20;
    }
    if (key == '3') {
      a = 30;
    }
    if (key == '4') {
      a = 40;
    }
    if (key == '5') {
      a = 50;
    }
    if (key == '6') {
      a = 60;
    }
    if (key == '7') {
      a = 70;
    }
    if (key == '8') {
      a = 80;
    }
  }
 
  //give circle outline or no outline
  if (keyPressed) {
    if (key == 'n') {
      z = true;
    }
    if (key == 'l') {
      z = false;
    }
  }
  if (z) {
    y = x;
  }
  if (!z) {
    y = (0);
  }
  
  //draw when clicking
  if (mousePressed) {
    stroke(y);
    fill(x);
    ellipse(mouseX, mouseY, a, a);
  }
  
  //clear with delete
  if (keyPressed) {
    if (key == 'x') {
      background(255);
    }
  }
}