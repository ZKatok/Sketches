import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int potSwitch = 0;
float offset = 50.0;
float scaleVal = 35.0;
float angleInc;
float mappedPot;

void setup() {
  size(700, 100);
  noStroke();
  arduino = new Arduino(this, "/dev/cu.usbserial-DN01JSLP", 57600);
  arduino.pinMode(potSwitch, Arduino.INPUT);
}

void draw() {
  background(204);
  float angle = 0.0;
  mappedPot = map(arduino.analogRead(potSwitch), 0, 1023, 7, 60);
  angleInc = PI/mappedPot;
  for (int x = 0; x < width; x += 5) {
    float y1 = offset + (sin(angle) * scaleVal);
    fill(255);
    rect(x, y1, 2, 4);
    
    float y2 = offset + (cos(angle) * scaleVal);
    fill(0);
    rect(x, y2, 2, 4);
    
    angle += angleInc;
  }
  
  
  println(angleInc);
}