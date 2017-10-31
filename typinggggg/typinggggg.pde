String wooord = "";

void setup() {
  size(600, 400);
  background(0);
}

void draw() {
  background(0);
  while (key != ENTER || key != RETURN) {
    input();
  } if (key == ENTER || key == RETURN) {
    morse();
  }
}

void keyPressed() {
  try {
    if (key == DELETE || key == BACKSPACE) {
      wooord = wooord.substring(0, wooord.length()-1);
    } else {
      wooord = wooord+key;
    }
  } catch (StringIndexOutOfBoundsException e) { // if the user presses delete so the string length is -1
    exit(); // WE'RE TOO FAR GONE. ABORT. ABORT.
  }
}

void input() {
  textSize(30);
  text(wooord, 10, 50);
}

void morse() {
  
}