const int potPin0 = 0; // red joystick l/r
const int potPin1 = 1; // red joystick u/d
const int potPin2 = 2; // blue joystick l/r
const int potPin3 = 3; // blue joystick u/d
const int buttonPin2 = 2; // red button
const int buttonPin3 = 3; // blue button
int potVal0 = 100;
int potVal1 = 100;
int potVal2 = 100;
int potVal3 = 100;
int buttonState2 = 0;
int buttonState3 = 0;
int lastButtonState2 = LOW;
int lastButtonState3 = LOW;

// the following variables are unsigned longs because the time, measured in
// milliseconds, will quickly become a bigger number than can be stored in an int.
unsigned long lastDebounceTime2 = 0;  // the last time the output pin was toggled
unsigned long lastDebounceTime3 = 0;  // the last time the output pin was toggled
unsigned long debounceDelay2 = 50;    // the debounce time; increase if the output flickers
unsigned long debounceDelay3 = 50;    // the debounce time; increase if the output flickers

void setup() {
  Serial.begin(9600);
  pinMode(buttonPin2, INPUT); // initialize pushbutton pin as an input
  pinMode(buttonPin3, INPUT);
}

void loop() {
  potVal0 = analogRead(potPin0);
  potVal1 = analogRead(potPin1);
  potVal2 = analogRead(potPin2);
  potVal3 = analogRead(potPin3);
int reading2 = digitalRead(buttonPin2);
int reading3 = digitalRead(buttonPin3);

// debounce button in pin 2
    // If the switch changed, due to noise or pressing:
  if (reading2 != lastButtonState2) {
    // reset the debouncing timer
    lastDebounceTime2 = millis();
  }

  if ((millis() - lastDebounceTime2) > debounceDelay2) {
    // whatever the reading is at, it's been there for longer than the debounce
    // delay, so take it as the actual current state:

    // if the button state has changed:
    if (reading2 != buttonState2) {
      buttonState2 = reading2;
    }
  }
  lastButtonState2 = reading2;

  // debounce button in pin 3
    // If the switch changed, due to noise or pressing:
  if (reading3 != lastButtonState3) {
    // reset the debouncing timer
    lastDebounceTime3 = millis();
  }

  if ((millis() - lastDebounceTime3) > debounceDelay3) {
    // whatever the reading is at, it's been there for longer than the debounce
    // delay, so take it as the actual current state:

    // if the button state has changed:
    if (reading3 != buttonState3) {
      buttonState3 = reading3;
    }
  }
  lastButtonState3 = reading3; 

  Serial.print(potVal0+", "); // red joystick l/r
  Serial.print(potVal1+", "); // red joystick u/d
  Serial.print(potVal2+", "); // blue joystick l/r
  Serial.print(potVal3+", "); // blue joystick u/d 
  
  if (buttonState2 == 1) { // red button pressed
    Serial.print(1+", ");
  } else if (buttonState2 == 0) { // red button not pressed
    Serial.print(0+", ");
  }
  
  if (buttonState3 == 1) { // blue button pressed
    Serial.print(1+", ");
  } else if (buttonState3 == 0) { // blue button not pressed
    Serial.print(0+",\0");
  } 
  Serial.println(",\0");
  delay(100);
}
