int x = 70;
int move;
int turnNose;
int handX = x + 65;
// int roundHandX;
float preHandY;
float handY /*= (sqrt(7400 - sq(handX-275)) + 184) - 172 */;
int roundHandY;
int moveHand;

void setup() {
  size(500, 400);
}

void draw() {
  background(193);
  rect(-1, 350, 502, 50); // ground
  smowman(x, turnNose, handX);
  x = x + move;

  // change x position of Mr. Smowman
  if (x == 70) {
    move = 1;
    turnNose = 0;
  }
  if (x == 430) {
    move = -1;
    turnNose = 40;
  }

  //move arm by changing X coordinate of hand.
  //Y coordinate changes according to a circle centered on the shoulder.
  handX = handX + moveHand;
  //  preHandY = (sqrt(7400 - sq(handX-275)) + 184) - 172;
  //  handY = 98 + (98 - preHandY);  // this line is needed because Processing has an inverted
  // coordinate system; this line flips across y = 98
  //  roundHandY = round(handY);

  // allows arm to smoothly wave back and forth
  if (handX == x + 65) {
    moveHand = moveHand + 2;
  }
  if (handX == x + 111) {
    moveHand = 0;
  }

  if (handX == 507) {
    moveHand = moveHand - 2;
  } 
  println(handX);
  //  println(handY, roundHandY);
}

void smowman(int x, int turnNose, int handX) {
  // add number to x to make things off center where they need to be
  rect(x - 35, 120, 70, 5);        // hat brim
  rect(x - 20, 75, 40, 45);        // hat body
  ellipse(x, 150, 50, 50);         // head
  ellipse(x - 10, 140, 5, 5);      // his right eye
  ellipse(x + 10, 140, 5, 5);      // his left eye
  rect(x - turnNose, 149, 40, 3);  // nose; 'turnNose' changes the nose position so it
                                   // looks like he's looking a certain direction
  line(x - 15, 155, x - 15, 162);  // his right vertical mouth line
  line(x - 15, 162, x + 15, 162);  // horizontal mouth line
  line(x + 15, 155, x + 15, 162);  // his left vertical mouth line
  ellipse(x, 213, 75, 75);         // torso
  line(x - 25, 184, x - 75, 254);  // his right arm
  ellipse(x, 300, 100, 100);       // bottom

  line(x + 25, 184, handX + 25, 107);//roundHandY);  // his left arm
}