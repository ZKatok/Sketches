/*
Sage Ridge Coding
Electro-sketch, or how to control a brush on the canvas with two potentiometers
Adapted from Processing.org
*/

// Here we declare the pin numbers for potentiometers 0 and 1
// Pot 0 will control the horizontal, x, while Pot 1 the vertical, y.
const int potPin0 = 0; // const signals to the compiler that
const int potPin1 = 2; // the values of these variables cannot change.
const int potPin2 = 4;
const int buttonPin = 2;
int potVal0 = 100;
int potVal1 = 100;
int potVal2 = 100;
int buttonState = 0;

// In setup() we open the serial output for streaming 
// at a rate of 9600 characters per second
void setup() 
{
  Serial.begin(9600);
  pinMode(buttonPin, INPUT); // initialize pushbutton pin as an input
}

// In the main loop we read the analog value of potPin0 and 
// potPin1 every 500 milliseconds and stream the 
// values out over the serial connection as x,y pairs. Each pair 
// is followed by an ASCII new line character, "\0".
void loop() 
{
  potVal0 = analogRead(potPin0);
  potVal1 = analogRead(potPin1);
  potVal2 = analogRead(potPin2);
  buttonState = digitalRead(buttonPin);
  potVal0 = map(potVal0, 0, 1023, 0, 500); // map converts a range of values
  potVal1 = map(potVal1, 0, 1023, 0, 500); // to another range of values.
  potVal2 = map(potVal2, 0, 1023, 0, 360);
  Serial.print(potVal0);
  Serial.print(",");
  Serial.print(potVal1);
  Serial.print(",");
  Serial.print(potVal2);
  Serial.print(",");
  if (buttonState == HIGH) { // button pressed
    Serial.print(1);
  } else if (buttonState == LOW) { // button not pressed
    Serial.print(0);
  }
  Serial.println(",\0"); 
  delay(100);
}

