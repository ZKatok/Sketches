color mainCircleColor = color(255); // white
color extraCircleColor = color(5, 118, 252); // blue

void setup() {
  size(1050, 600);
  frameRate(100);
  background(0);
  noStroke();
}

void draw() {

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
}

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