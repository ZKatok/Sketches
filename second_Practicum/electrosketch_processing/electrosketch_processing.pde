/*
Sage Ridge Coding 
Electro-sketch, or how to control a brush on the 
canvas with two potentiometers
Adapted from Processing.org 
*/
 
// Import the serial library
import processing.serial.*;

// Instantiate objects of the Serial and esPen classes
// Data received from the serial port. esPen is defined at
// the end of this sketch. The serial port needs to be
// manually defined. The exmaple here is for OSX (Mac). 
// The precise port name string will depend on your OS and
// the port the Arduino was assigned. This value is available
// through the Arduino IDE.
esPen myPen;
Serial myPort;
int initColor = 0; // The RGB pen color
String inBuffer = null; 
String portName = "/dev/cu.usbmodemfd131"; 
int lt = 10;
  
// Set the canvas size, color mode (hue, saturation, value),
// aliasing, drawing stroke, background color, 
// and open the serial port|file.
// The clear method of the serial class ensures that we receive
// a complete line of values from the Arduino the first time.
void setup() {
  size(500, 500);
  colorMode(HSB, 360, 100, 100);
  noSmooth();
  strokeWeight(3);
  background(0,0,100);
  myPen = new esPen(250,250,initColor);
  myPort = new Serial(this, portName, 9600);
  myPort.clear();
}


// Processing using draw() rather than loop(). Like Arduino,
// this is an infinite loop.
void draw() {
  while (myPort.available() > 0) {
    String inBuffer = myPort.readStringUntil(lt);
    if (inBuffer != null) {
      int[] esPenState = int(split(inBuffer,','));
      myPen.xPrev = myPen.x;
      myPen.yPrev = myPen.y;
      myPen.x = esPenState[0];
      myPen.y = esPenState[1];
      myPen.buttonValue = esPenState[2];
      myPen.scratch();
    } 
  }
}


// Declare a pen class for the Elektro-Sketch
// The pen class will know its position and the pen' hue
// Saturation and value (brightness) will be preset.
// esHSB defines the color of the pen.
class esPen {

// Data to be stored in object instance
  int x;
  int y;
  int xPrev;
  int yPrev;
  int hueValue;
  int satValue;
  int brightnessValue;
  int buttonValue;
  color esHSB; 
 
// Constructor to create object from class definition
// hueValue set the hue (color) of the pen. Color is
// determined by its hue, saturation, and brightness.
// The constructor sets inital values.
  esPen (int xpos, int ypos, int bV) {
    x = xpos;
    y = ypos;
    xPrev = xpos;
    yPrev = ypos;
    hueValue = 0; 
    satValue = 50; 
    brightnessValue = 50; 
    esHSB = color(hueValue,satValue,brightnessValue);
    buttonValue = bV;
  }
 
// Method to draw the etch point. First the fill is set to 
// the color set by hueValue. Saturation and brightness are static
// but can be changed here.
  void scratch() {
    hueValue += 5;
    if (hueValue == 100) {
      hueValue = 0;
    }
    //esHSB = color(hueValue,50,50); // Color can be changed here.
    esHSB = color(2,50,50); // Color can be changed here.
    stroke( esHSB );
    line(x, y, xPrev, yPrev);
  }
  
  void clearScreen() {
    if (buttonValue == 1) {
      background(0, 0, 100);
    }
  }
}