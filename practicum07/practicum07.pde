/* Drawing with Leap
 * This project allows you to draw a thick, colored line by extending your index finger
 * (the color is changed by flipping the bird) and to draw a thin, black line by extending your thumb.
 */

import de.voidplus.leapmotion.*;

int colorrr = 0; // stores the hue value used for the big line
int n = 0; // controls changing the color just once instead of causing an epileptic fit
// declare variables that will be used to store the location of various fingers
PVector thumbLoc;
PVector indexLoc;
PVector middleLoc;

LeapMotion leap;

void setup() {
  size(800, 600);
  colorMode(HSB, 300, 100, 100);
  background(300); // white
  noStroke();
  
  leap = new LeapMotion(this); // call the Leap device
}

void draw() {
  for (Hand hand : leap.getHands ()) { // look at each hand that the Leap can see in turn

    // look at the finger in question
    Finger fingerThumb = hand.getThumb();
    Finger fingerIndex = hand.getIndexFinger();
    Finger fingerMiddle = hand.getMiddleFinger();
    
    // make the variables established earlier contain the position of each finger
    thumbLoc = fingerThumb.getPosition();
    indexLoc = fingerIndex.getPosition();
    middleLoc = fingerMiddle.getPosition();

    if (fingerIndex.isExtended() && !fingerThumb.isExtended()) { // if the index finger and not the thumb is extended
      fill(colorrr, 100, 100); // the hue set by the color variable at 100% saturation and brightness
      ellipse(indexLoc.x, indexLoc.y, 50, 50); // circle centered at the location set by the index finger
    } else if (!fingerIndex.isExtended() && fingerThumb.isExtended()) { // if the thumb and not the index finger is extended
      fill(0); // black
      ellipse(thumbLoc.x, thumbLoc.y, 10, 10); // circle centered at the location set by the thumb
    }

    if (fingerMiddle.isExtended()) { // if the middle finger is extended at any time
      if (n%2 == 0) { // if n is even (n is initally 0, which is even)
        if (colorrr == 300) { 
          colorrr = 0; // loop it around so the color isn't red forever (i.e. greater than 300)
        } else { // if the color variable is not at 300
          colorrr += 25;
        }
        n += 1; // make n odd
      }
    } else { // if middle finger is not extended
      if (n%2 == 1) { // if n is odd
        n+=1; // add 1 to n when the finger goes down so when the finger goes up again n will be even and colorrr will change
      }
    }
  }
}
