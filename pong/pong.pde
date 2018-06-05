Paddle P1, P2;
Ball B1;
Ball B2;
int m1, m2;
int scoreL = 0;
int scoreR = 0;
int hits = 0;
int m = 3;

void setup() {
  size(700, 500);
  rectMode(CENTER);
  ellipseMode(CENTER);
  colorMode(HSB, 150, 100, 100);
  textAlign(CENTER, CENTER);
  textSize(30);
  P1 = new Paddle(20);
  P2 = new Paddle(width-20);
  B1 = new Ball(height/2);
  B2 = new Ball(height/4);
}

void draw() {
  background(0);
  // paddle functions
  P1.drawP();
  P1.move(m1);
  P2.drawP();
  P2.move(m2);
  // ball functions
  B1.drawB();
  B1.move();
  B1.speedup();
  B1.colorChange();
  B1.reset();
  if (scoreR >= 4 || scoreL >= 4) {
    B2.drawB();
    B2.move();
    B2.speedup();
    B2.colorChange();
    B2.reset();
  }
  // show score
  fill(150);
  text(scoreL+" | "+scoreR, width/2, 30);
}

void keyPressed() { // helps paddle class
  if (key == 'a') { // move P1 up
    m1 = -m;
  } else if (key == 'z') { // move P1 down
    m1 = m;
  } else if (key == 's' || key == 'x') { // stop P1
    m1 = 0;
  } else if (key == 'k') { // move P2 up
    m2 = -m;
  } else if (key == 'm') { // move P2 down
    m2 = m;
  } else if (key == 'j' || key == 'n') { // stop P2
    m2 = 0;
  }
}
