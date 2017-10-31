// catch the falling shapes

int score;
float shapeX;
float shapeY;
float shapeWidth;
int fall = 2;
int catcherX;
float catcherWidth;
int catcherMove;
float shapeColor;

void setup() {
  score = 0;
  shapeX = random(width-shapeWidth);
  shapeY = 0;
  shapeWidth = width/15;
  fall = 2;
  catcherX = width/2;
  catcherWidth = shapeWidth*3;
  catcherMove = 5;
  shapeColor = random(360);

  fullScreen();
  background(0);
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  background(0);
  textSize(50);
  text("Score: "+score, 20, 60);

  shapeY += fall;
  fill(shapeColor, 100, 100);
  rect(shapeX, shapeY, shapeWidth, shapeWidth);

  if (keyPressed == true) { // move catcher left and right with a and d keys
    if (key == 'a') {
      catcherX -= catcherMove;
    }
    if (key == 'd') {
      catcherX += catcherMove;
    }
    if (key == 's') {
      shapeY = height - 4*height/15; // move shape all the way down
    }
  }
  fill(320);
  rect(catcherX, 13*height/15, catcherWidth, 2*height/15); // catcher

  // Score changing things
  if (score == 5) {
    fall = 4;
  }
  if (score == 10) {
    fall = 5;
    catcherWidth = shapeWidth*2.75;
    catcherMove = 6;
  }
  if (score == 15) {
    catcherWidth = shapeWidth*2.5;
    catcherMove = 7;
  }
  if (score == 20) {
    fall = 6;
  }
  if (score == 25) {
    fall = 7;
    catcherWidth = shapeWidth*2;
    catcherMove = 8;
  }
  if (score == 30) {
    fall = 8;
    catcherWidth = shapeWidth*1.5;
    catcherMove = 10;
  }
  
  if (shapeY >= height - shapeWidth - 10 && shapeY <= height - shapeWidth + 10) { // the range allows fall rate changing the exact y position not to matter
    if (catcherX <= shapeX && shapeX <= catcherX + catcherWidth - shapeWidth) { // if shape is above catcher
      shapeX = random(width-shapeWidth);
      shapeY = 0;
      shapeColor = random(360);
      score++;
    } else {
      background(125);
      textSize(200);
      text(score, width/2, height/2);
      exit();
    }
  }
}