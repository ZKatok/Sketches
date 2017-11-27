import ketai.camera.*;
KetaiCamera cam;

void setup() {
  orientation(LANDSCAPE);
  imageMode(CENTER);
  cam = new KetaiCamera(this, 680, 900, 6);
  cam.autoSettings();
}

void draw() {
  image(cam, width/2, height/2);
  filter(POSTERIZE, 4);
  loadPixels();
  for (int i = 0; i < width * height; i++) {
    color c = pixels[i];
    float r = (green(c)+red(c))/2;
    float g = red(c);
    float b = blue(c);
    pixels[i] = color(r, g, b);
  }
  updatePixels();
}

void onCameraPreviewEvent() {
  cam.read();
}

// start/stop camera preview by tapping the screen
void mousePressed() {
  if (cam.isStarted()) {
    cam.stop();
  } else {
    cam.start();
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == MENU) {
      if (cam.isFlashEnabled())
        cam.disableFlash();
      else
        cam.enableFlash();
    }
  }
}