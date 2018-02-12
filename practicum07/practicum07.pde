import de.voidplus.leapmotion.*;

int colorrr = 0;
int n = 0; // controls changing the color just once instead of epileptic fit
PVector thumbLoc;
PVector indexLoc;
PVector middleLoc;
PVector pinkyLoc;

LeapMotion leap;

void setup() {
  frameRate(120);
  size(800, 600);
  background(255);
  colorMode(HSB, 300, 100, 100);
  noStroke();
  fill(colorrr, 100, 100);

  leap = new LeapMotion(this);
}

void draw() {
  for (Hand hand : leap.getHands ()) {

    Finger fingerThumb = hand.getThumb();
    Finger fingerIndex = hand.getIndexFinger();
    Finger fingerMiddle = hand.getMiddleFinger();
    Finger fingerPinky = hand.getPinkyFinger();
    thumbLoc = fingerThumb.getPosition();
    indexLoc = fingerIndex.getPosition();
    middleLoc = fingerMiddle.getPosition();
    pinkyLoc = fingerPinky.getPosition();

    if (fingerIndex.isExtended() && !fingerThumb.isExtended()) {
      fill(colorrr, 100, 100);
      ellipse(thumbLoc.x, thumbLoc.y, 50, 50);
    } else if (fingerIndex.isExtended() && fingerThumb.isExtended()) {
      fill(0);
      ellipse(thumbLoc.x, thumbLoc.y, 10, 10);
    }

    if (fingerMiddle.isExtended()) {
      if (n%2 == 0) {
        if (colorrr == 300) {
          colorrr = 0;
        } else {
          colorrr += 25;
        }
        n += 1;
      }
    } else { // if not extended
      if (n%2 == 1) {
        n+=1;
      }
    }
  }
}