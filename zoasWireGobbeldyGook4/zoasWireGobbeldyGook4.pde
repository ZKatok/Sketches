import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int mySwitch = 2;
int myLED = 13;
// int pot;

void setup() {
  arduino = new Arduino(this, "/dev/cu.usbserial-DN01JSLP", 57600);
  arduino.pinMode(mySwitch, Arduino.INPUT);
  arduino.pinMode(myLED, Arduino.OUTPUT);
}

void draw() {
  //  pot = arduino.analogRead(0);
  //  println(pot);

  if (arduino.digitalRead(mySwitch) == Arduino.HIGH) {
    arduino.digitalWrite(myLED, Arduino.HIGH);
    fill(0);
    ellipse(50, 50, 80, 80);
    arduino.digitalWrite(myLED, Arduino.HIGH);
    println(arduino.digitalRead(mySwitch));
  } else {
    arduino.digitalWrite(myLED, Arduino.LOW);
    fill(255);
    ellipse(50, 50, 80, 80);
    arduino.digitalWrite(myLED, Arduino.LOW);
    println(arduino.digitalRead(mySwitch));
  }
  delay(100);
}