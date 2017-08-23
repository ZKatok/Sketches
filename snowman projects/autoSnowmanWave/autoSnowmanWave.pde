float handX = 315;
float preHandY;
float handY;
float moveHand;

void setup() {
  size(500, 400);
}

void draw() {
  background(193);
  
  //draw snowman except his left arm
  rect(215, 120, 70, 5);          // hat brim
  rect(230, 75, 40, 45);          // hat body
  ellipse(250, 150, 50, 50);      // head
  ellipse(240, 140, 5, 5);        // his right eye
  ellipse(260, 140, 5, 5);        // his left eye
  rect(250, 149, 40, 3);          // nose
  line(235, 155, 235, 162);       // his right vertical mouth line
  line(235, 162, 265, 162);       // horizontal mouth line
  line(265, 155, 265, 162);       // his left vertical mouth line
  ellipse(250, 213, 75, 75);      // torso
  line(225, 184, 175, 254);       // his right arm
  ellipse(250, 300, 100, 100);    // bottom
  rect(-1, 350, 502, 50);         // ground

  //move arm by changing X coordinate of hand.
  //Y coordinate changes according to a circle centered on the shoulder.
  handX = handX + moveHand;
  preHandY = (sqrt(7400 - sq(handX-275)) + 184) - 172;
  handY = 98 + (98 - preHandY);  // this line is needed because Processing has an inverted
                                 // coordinate system; this line flips across y = 98

  // allows arm to smoothly wave back and forth
  if (handX == 315) {
    moveHand = 1;
  }
  if (handX == 361) {
    moveHand = -1;
  }
  
  line(275, 184, handX, handY);   // his left arm
  
  println(handX, handY);
}