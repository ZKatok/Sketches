// catch the falling shapes

int score;
//float shapeX;
//float shapeY;
//float shapeWidth;
int catcherX;
float catcherWidth;
int catcherMove;
int fall;
//float shapeColor;
  float shapeWidth = 0;

private Shape fallingShape = null;
private Shape catcherShape = null;

private class Shape {
  float positionX = 0f;
  float positionY = 0f;
  float width = 0f;
  float height = 0f;
  float shapecolor = 0f;

  public Shape(float positionX, float positionY, float width, float shapecolor) {
    this.positionX = positionX;
    this.positionY = positionY;
    this.width = width;
    this.shapecolor = shapecolor;
  }

  public void draw() {
    fill(shapecolor, 100, 100);
    rect(positionX, positionY, this.width, this.height);
  }

  public void move(float x, float y) {
    positionX += x;
    positionY += y;
  }

  public void moveAbsolute(float x, float y) {
    positionX = x;
    positionY = y;
  }
}

void setup() {
  score = 0;
  shapeWidth = width/15;

  fallingShape = new Shape(random(width-(shapeWidth)), 0, shapeWidth, random(360));
  fallingShape.height = fallingShape.width;
  catcherShape = new Shape(width/2, 13*height/15, shapeWidth*3, 0);
  catcherShape.height = 2*shapeWidth;

  //shapeX = random(width-shapeWidth);
  // shapeY = 0;
  fall = 2;
  //catcherX = width/2;
  //catcherWidth = shapeWidth*3;
  catcherMove = 5;
  //shapeColor = random(360);

  fullScreen();
  background(0);
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  background(0);
  fill(360);
  textSize(50);
  text("Score: "+score, 20, 60);

  fallingShape.draw();
  fallingShape.move(0, fall);
  // shapeY += fall;
  // fill(shapeColor, 100, 100);
  // rect(shapeX, shapeY, shapeWidth, shapeWidth);

  if (keyPressed == true) { // move catcher left and right with a and d keys
    if (key == 'a') {
      //catcherX -= catcherMove;
      catcherShape.move(-1*catcherMove, 0);
    }
    if (key == 'd') {
      //catcherX += catcherMove;
      catcherShape.move(catcherMove, 0);
    }
    if (key == 's') {
      fallingShape.moveAbsolute(fallingShape.positionX, height - 4*height/15);
      //   shapeY = height - 4*height/15; // move shape all the way down
    }
  }
  // fill(320);
  // rect(catcherX, 13*height/15, catcherWidth, 2*height/15); // catcher
  catcherShape.draw();

  // Score changing things
  if (score == 5) {
    fall = 4;
  }
  if (score == 10) {
    fall = 5;
    //  catcherWidth = shapeWidth*2.75;
    catcherShape.width = fallingShape.width*2.75;
    catcherMove = 6;
  }
  if (score == 15) {
    // catcherWidth = shapeWidth*2.5;
    catcherShape.width = fallingShape.width*2.5;
    catcherMove = 7;
  }
  if (score == 20) {
    fall = 6;
  }
  if (score == 25) {
    fall = 7;
    //catcherWidth = shapeWidth*2;
    catcherShape.width = fallingShape.width*2;
    catcherMove = 8;
  }
  if (score == 30) {
    fall = 8;
    //catcherWidth = shapeWidth*1.5;
    catcherShape.width = fallingShape.width*1.5;
    catcherMove = 10;
  }

  if (fallingShape.positionY >= height - fallingShape.width - 10 && fallingShape.positionY <= height - fallingShape.width + 10) { // the range allows fall rate changing the exact y position not to matter
    if (catcherShape.positionX <= fallingShape.positionX && fallingShape.positionX <= catcherShape.positionX + catcherShape.width - fallingShape.width) { // if shape is above catcher
      fallingShape.positionX = random(width-shapeWidth);
      fallingShape.positionY = 0;
      fallingShape.shapecolor = random(360);
      score++;
    } else {
      background(125);
      textSize(200);
      text(score, width/2, height/2);
      exit();
    }
  }
}