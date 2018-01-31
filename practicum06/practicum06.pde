/* "AP Euro Flashback Time"
 * by Zoa Katok
 * 
 * This project displays two clocks, one traditional and one decimal, side by side.
 *
 */

PShape normclock, ncircle, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, 
  revclock, rcircle, r1, r2, r3, r4, r5;
PFont font;

void setup() {
  fullScreen();
  
  font = loadFont("LucidaHandwriting-Italic-48.vlw");
  textFont(font);
  
  strokeWeight(height/100);
  fill(255);
  textAlign(CENTER);
}

void draw() {
  
/************************************** BACKGROUND AND TEXT **************************************/

  // make the background blue from 0:00 to 11:59 and black from 12:00 to 23:59
  noStroke();
  textSize(height/20);
  if (hour()<12) {
    background(89, 161, 252); // blue
    fill(255, 236, 26); // yellow
    ellipse(width/2, height/10, height/8, height/8);
    fill(0); // black
    text("le soleil", width/2, 2*height/9);
  } else {
    background(0); // black
    fill(255); // white (for text)
    ellipse(width/2, height/10, height/8, height/8);
    text("la lune", width/2, 2*height/9);
  }
  
  // scorpion clockworks
  textSize(height/16);
  text("Horloges de Scorpion & Fils", width/2, 17*height/18);

/************************************** CLOCKFACES **************************************/

  // revolutionary clockface
  stroke(0, 0, 255);
  fill(255);
  ellipse(width/4, height/2, height/2, height/2);
  for (int i=0; i<5; i++) {
    pushMatrix();
      translate(width/4, height/2);
      rotate(radians(-i*72));
      stroke(0);
      line(0, -height/4, 0, (height/40)-height/4); // the line
      fill(0);
      textSize(height/22);
      text(5-i, 0, (height/15)-height/4); // the number
    popMatrix();
    // text under clock
    textSize(height/21);
    if (hour()>=12) { // make text white at night
      fill(255);
    }
    text("de la révolution", width/4, (height/14)+3*height/4);
  }

  // normal clockface
  stroke(0, 0, 255);
  fill(255);
  ellipse(3*width/4, height/2, height/2, height/2);
  for (int i=0; i<12; i++) {
    pushMatrix();
      translate(3*width/4, height/2);
      rotate(radians(-i*360/12));
      stroke(0);
      line(0, -height/4, 0, (height/40)-height/4); // the line
      fill(0);
      textSize(height/22);
      text(12-i, 0, (height/15)-height/4); // the number
    popMatrix();
    // text under clock
    textSize(height/21);
    if (hour()>=12) { // make text white at night
      fill(255);
    }
    text("d'aujourd'hui", 3*width/4, (height/14)+3*height/4);
  }
  
/************************************** CLOCK HANDS **************************************/
  // declare variables that change
  int nh = hour();
  int nm = minute();
  int ns = second();
  int trs = round((ns + 60*nm + 3600*nh)/0.864); // total rev. sec. gone by that day (= total number of normal sec. / 0.864)
  int rh = floor(trs/10000); // to get the hour divide total rev. sec. by number of rev. sec. per rev. hr
  int rm = floor((trs-(rh*10000))/100); // to get the minute divide (total rsec minus the number of rsec in the hours gone by) divided by number of rsec per rmin
  int rs = trs-(rh*10000)-(rm*100);
  
/************* REVOLUTIONARY *************/  
  
  // revolutionary second hand
  pushMatrix();
    translate(width/4, height/2);
    rotate(radians(rs*360/100));
    stroke(255, 0, 0);
    line(0, 0, 0, 20-height/4);
  popMatrix();
  
  // revolutionary minute hand
  pushMatrix();
    translate(width/4, height/2);
    rotate(radians(rm*360/100));
    stroke(0);
    line(0, 0, 0, 20-height/4);
  popMatrix();

  // revolutionary hour hand
  pushMatrix();
    translate(width/4, height/2);
    rotate(radians((rh%5)*360/5));
    stroke(0);
    line(0, 0, 0, (20-height/4)*0.6); // 3/5 the length of the second and minute hands
  popMatrix();
  
/************* NORMAL *************/  

  // normal second hand
  pushMatrix();
    translate(3*width/4, height/2);
    rotate(radians(ns*360/60));
    stroke(255, 0, 0);
    line(0, 0, 0, 20-height/4);
  popMatrix();
  
  // normal minute hand
  pushMatrix();
    translate(3*width/4, height/2);
    rotate(radians(nm*360/60));
    stroke(0);
    line(0, 0, 0, 20-height/4);
  popMatrix();
  
  // normal hour hand
  pushMatrix();
    translate(3*width/4, height/2);
    rotate(radians((nh%12)*360/12));
    stroke(0);
    line(0, 0, 0, (20-height/4)*0.6); // 3/5 the length of the second and minute hands
  popMatrix();
}