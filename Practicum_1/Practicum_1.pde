/*
 *
 * Practicum one
 * 
 * Reflective Drawing
 * 
 * Zoa Katok
 * 9 September 2017
 * 
 * This is a drawing program on a black background. The line follows your cursor (really two differently colored lines, 
 * one slightly on top of the other). There are 4 drawing options: no reflection, reflection across the
 * vertical midline, reflection across the horizontal midline, and reflections across the vertical, horizontal,
 * and diagonal midlines. There are also 3 color combinations to choose from plus a black option that serves as an eraser.
 * Finally, there is an option to completely clear the screen.
 * 
 * INSTRUCTIONS:
 * In order to draw the line, you must hold down a key 1-4, which will draw the main line wherever the cursor is
 * and any reflections are based on where the cursor is.
 *   1 -- no reflection
 *   2 -- reflection across the vertical midline
 *   3 -- reflection across the horizontal midline
 *   4 -- reflections across the vertical, horizontal, and diagonal midlines
 * To change the colors:
 *   q -- purple and light purple
 *   w -- red and orange
 *   e -- white and blue (default)
 *   r -- black
 * To clear the screen, press x.
 *
 */

boolean savePDF;

// Stuff you need but can safely ignore right now
import processing.pdf.*;
import java.util.Calendar;
import generativedesign.*;


// Your variables need to be declared here
color mainCircleColor = color(255); // white
color extraCircleColor = color(5, 118, 252); // blue

// Code you want to have run once goes here
void setup() {
  size(1050, 600);
  frameRate(100);
  background(0);
  noStroke();
} 

// Code you loop until you stop the sketch
void draw() { 

  // **Leave this conditional here but maybe modify if you understand what it does**
  if (savePDF) {
    beginRecord(PDF, timestamp()+".pdf");
    noStroke();
    colorMode(HSB, 360, 100, 100, 100);
  } 


  // YOUR CODE GOES HERE
  if (keyPressed) {
    if (key == '1') {
      mode1(); // draw one line where the cursor is
    }
    if (key == '2') {
      mode2(); // draw 2 lines (reflection across vertical midline)
    }
    if (key == '3') {
      mode3(); // draw 2 lines (reflection across horizontal midline)
    }
    if (key == '4') {
      mode4(); // draw 4 lines (reflections across horizontal and vertical midlines)
    }
    if (key == 'q') {
      mainCircleColor = color(214, 153, 245); // light purple
      extraCircleColor = color(165, 17, 240); // purple
    }
    if (key == 'w') {
      mainCircleColor = color(237, 166, 72); // orange
      extraCircleColor = color(222, 46, 11); // red
    }
    if (key == 'e') {
      mainCircleColor = color(255); // white
      extraCircleColor = color(5, 118, 252); // blue
    }
    if (key == 'r') {
      mainCircleColor = color(0); // black
      extraCircleColor = color(0); // black. it's like an eraser.
    }
    if (key == 'x') {
      background(0); // clear screen
    }
  }

  // **Leave this conditional here**
  if (savePDF) {
    savePDF = false;
    endRecord();
  }
} 


// **Printing function. Leave here.**

void keyReleased() {
  if (key == 's' || key == 'S') saveFrame(timestamp()+"_##.png");
  if (key == 'p' || key == 'P') savePDF = true;
}

// timestamp
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}

// defining functions I created

void mode1() { // draw a line where the cursor is
  fill(mainCircleColor);
  ellipse(mouseX, mouseY, 10, 10); // where the cursor is

  fill(extraCircleColor);
  ellipse(mouseX+7, mouseY+7, 10, 10); // to the right of the cursor circle
}

void mode2() { // draw 2 lines (reflection across vertical midline of the display window)
  mode1(); // draws main line

  if (mouseX >= width/2) {
    fill(mainCircleColor);
    ellipse(mouseX - 2*(mouseX-(width/2)), mouseY, 10, 10);
    fill(extraCircleColor);
    ellipse((mouseX - 2*(mouseX-(width/2))) -7, mouseY+7, 10, 10);
  } else if (mouseX < width/2) {
    fill(mainCircleColor);
    ellipse(mouseX + 2*((width/2)-mouseX), mouseY, 10, 10);
    fill(extraCircleColor);
    ellipse((mouseX + 2*((width/2)-mouseX)) -7, mouseY+7, 10, 10);
  }
}

void mode3() { // draw 2 lines (reflection across horizontal midline of the display window)
  mode1(); // draws main line

  if (mouseY <= height/2) {
    fill(mainCircleColor);
    ellipse(mouseX, mouseY + 2*((height/2)-mouseY), 10, 10);
    fill(extraCircleColor);
    ellipse(mouseX +7, mouseY + 2*((height/2)-mouseY) -7, 10, 10);
  } else if (mouseY > height/2) {
    fill(mainCircleColor);
    ellipse(mouseX, mouseY - 2*(mouseY-(height/2)), 10, 10);
    fill(extraCircleColor);
    ellipse(mouseX +7, mouseY - 2*(mouseY-(height/2)) -7, 10, 10);
  }
}

void mode4() { // draw 4 lines (reflections across horizontal and vertical midlines of the display window)
  mode1(); // draws main line
  mode2(); // flip over vertical middle
  mode3(); // flip over horizontal middle
  fill(mainCircleColor);
  ellipse(mouseX - 2*(mouseX-(width/2)), mouseY + 2*((height/2)-mouseY), 10, 10); // puts circle diagonal from original
  fill(extraCircleColor);
  ellipse(mouseX - 2*(mouseX-(width/2)) -7, mouseY + 2*((height/2)-mouseY) -7, 10, 10);
}