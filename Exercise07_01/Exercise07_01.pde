/* 
 * This program has Fahrenheit (outer ring) and Celcius (inner ring) scales.
 * It goes from 0-328º Celcius.
 * The X position of the cursor determines the input (Celcius).
 * Use 1, 2, 3, and 4 to change the color scheme.
 */

int temperature;
color celciusColor = color(68, 247, 10);
color fahrenheitColor = color(247, 10, 149);

void setup() {
  size(364, 364);
}

void draw() {
  background(0);
  strokeWeight(7);
  noFill();
  // change color scheme
  if (keyPressed) {
    if (key == '1') { // red and purple
      celciusColor = color(247, 10, 10);
      fahrenheitColor = color(178, 0, 255);
    }
    if (key == '2') { // pink and orange
      celciusColor = color(255, 26, 244);
      fahrenheitColor = color(255, 152, 26);
    }
    if (key == '3') { // white and blue
      celciusColor = color(255);
      fahrenheitColor = color(3, 139, 255);
    }
    if (key == '4') { // pink and green
      celciusColor = color(68, 247, 10);
      fahrenheitColor = color(247, 10, 149);
    }
  }
  // inner Celcius ring
  stroke(celciusColor);
  arc(180, 180, 150, 150, radians(0), radians(mouseX/2), OPEN);
  
  // outer Fahrenheit ring
  stroke(fahrenheitColor);
  arc(180, 180, 200, 200, radians(0), radians((mouseX/2)*9/5 + 32), OPEN);
  
}