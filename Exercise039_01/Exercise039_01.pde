/* Zoa Katok
   Exercises 34_01 and 39_01 combined.
   Brownian motion of dots in a classified program.
   When the mouse is not pressed, the dots will stay within the display window.
   When the mouse is pressed (and dragged), the dots will stay in a rectangle
   defined by the top left corner and the mouse position.
 */

Dot[] dots;

void setup() {
  size(500, 300);

  dots = new Dot[150];
  for (int i = 0; i < dots.length; i++) {
    dots[i] = new Dot();
    dots[i].x = random(width);
    dots[i].y = random(height);
  }
}

void draw() {
  background(0);

  for (int i = 0; i < dots.length; i++) {
    dots[i].move();
    dots[i].display();
    // if the dots wander offscreen, put them back in the screen.
    if (dots[i].x > width) {
        dots[i].x = random(width);
      }
      if (dots[i].y > height) {
        dots[i].y = random(height);
      }
  }
  
  if (mousePressed) {
    // draw box lines
    stroke(255);
    line(mouseX, 0, mouseX, mouseY);
    line(0, mouseY, mouseX, mouseY);
    // if the dots wander out of constraints, put them back in.
    for (int i = 0; i < dots.length; i++) {
      if (dots[i].x > mouseX) {
        dots[i].x = random(mouseX);
      }
      if (dots[i].y > mouseY) {
        dots[i].y = random(mouseY);
      }
    }
  }
}

void mouseDragged() { // if the mouse is pressed and moved, change the dots' constraints
  for (int i = 0; i < dots.length; i++) {
    dots[i].x = random(mouseX);
    dots[i].y = random(mouseY);
  }
}

void mouseReleased() { // if the mouse is released, return initial dot constraints
  for (int i = 0; i < dots.length; i++) {
    dots[i].x = random(width);
    dots[i].y = random(height);
  }
}

class Dot {
  float x, y; 

  void move() { // randomly move the particle one in the x and one in the y
    float a = random(3); 
    if (a < 1) {
      x += 1;
    } else if (a > 2) {
      x -= 1;
    }

    float b = random(3); 
    if (b < 1) {
      y += 1;
    } else if (b > 2) {
      y -= 1;
    }
  }

  void display() {
    fill(255);
    noStroke();
    ellipse(x, y, 4, 4);
  }
}
