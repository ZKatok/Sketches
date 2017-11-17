PImage pic;
float h;
boolean counted = true; // keeps track of whether or not you count the pixel's hue for the histogram
int i1;
int i2;
int i3;
int i4;
int i5;
int i6;
int i7;
int i8;
int i9;
int i10;
int i11;
int i12;
int i13;
int i14;
int i15; // these fifteen store the number of pixels in each hue interval/height of each bar of the histogram

void setup() {
  pic = loadImage("williamsfave.jpg");
  size(1200, 898);
  colorMode(HSB, 360, 100, 100);
  textAlign(LEFT, TOP);
  background(84, 79, 3);
  
  // upper left text chunk
  fill(360);
  textSize(20);
  text("The histogram below shows approximately how many pixels"+"\n"
  +"of each hue there are in the image on the right."+"\n"+
  "The hues are divided into intervals of 24;"+"\n"+"the total number of hues is 360."+
  "\n"+"The color of each bar is the average hue of the bar's interval."+"\n"+
  "The heights of the bars are scaled down from the actual"+"\n"+"number of pixels by a factor of 100.", 3, 75);
  
  image(pic, width/2, 0);
  loadPixels();
  for (int i = 0; i < 1200*449; i++) { // takes each pixel and tells variables the heights of the histogram bars
    if (i%600 == 0) { // the picture is 600 pixels wide and there 600 pixels of black space in front of it,
      counted = !counted; // so it switches counting the hue every 600 pixels.
    }
    if (counted == true) {
      h = hue(pixels[i]);
      if (h >= 0 && h < 24) {
        i1 += 1;
      } else if (h >= 24 && h < 2*24) {
        i2 += 1;
      } else if (h >= 2*24 && h < 3*24) {
        i3 += 1;
      } else if (h >= 3*24 && h < 4*24) {
        i4 += 1;
      } else if (h >= 4*24 && h < 5*24) {
        i5 += 1;
      } else if (h >= 5*24 && h < 6*24) {
        i6 += 1;
      } else if (h >= 6*24 && h < 7*24) {
        i7 += 1;
      } else if (h >= 7*24 && h < 8*24) {
        i8 += 1;
      } else if (h >= 8*24 && h < 9*24) {
        i9 += 1;
      } else if (h >= 9*24 && h < 10*24) {
        i10 += 1;
      } else if (h >= 10*24 && h < 11*24) {
        i11 += 1;
      } else if (h >= 11*24 && h < 12*24) {
        i12 += 1;
      } else if (h >= 12*24 && h < 13*24) {
        i13 += 1;
      } else if (h >= 13*24 && h < 14*24) {
        i14 += 1;
      } else if (h >= 14*24 && h < 15*24) {
        i15 += 1;
      }
    }
  }

  // scale down each height variable
  i1 /= 100;
  i2 /= 100;
  i3 /= 100;
  i4 /= 100;
  i5 /= 100;
  i6 /= 100;
  i7 /= 100;
  i8 /= 100;
  i9 /= 100;
  i10 /= 100;
  i11 /= 100;
  i12 /= 100;
  i13 /= 100;
  i14 /= 100;
  i15 /= 100;

  // draw histogram; 80 is one fifteenth of the width of the display window
  fill(12, 100, 100);
  rect(0, height - i1, 80, i1); 
  fill(12*3, 100, 100);
  rect(80, height - i2, 80, i2);
  fill(12*5, 100, 100);
  rect(2*80, height - i3, 80, i3);
  fill(12*7, 100, 100);
  rect(3*80, height - i4, 80, i4);
  fill(12*9, 100, 100);
  rect(4*80, height - i5, 80, i5);
  fill(12*11, 100, 100);
  rect(5*80, height - i6, 80, i6);
  fill(12*13, 100, 100);
  rect(6*80, height - i7, 80, i7);
  fill(12*15, 100, 100);
  rect(7*80, height - i8, 80, i8);
  fill(12*17, 100, 100);
  rect(8*80, height - i9, 80, i9);
  fill(12*19, 100, 100);
  rect(9*80, height - i10, 80, i10);
  fill(12*21, 100, 100);
  rect(10*80, height - i11, 80, i11);
  fill(12*23, 100, 100);
  rect(11*80, height - i12, 80, i12);
  fill(12*25, 100, 100);
  rect(12*80, height - i13, 80, i13);
  fill(12*27, 100, 100);
  rect(13*80, height - i14, 80, i14);
  fill(12*29, 100, 100);
  rect(14*80, height - i15, 80, i15);
  
  fill(0);
  textSize(15);
  text(i1*100, 3, height - i1 + 3);
  text(i2*100, 83, height - i2 + 3);
  text(i3*100, 80*2+3, height - i3 + 3);
  text(i4*100, 80*3+3, height - i4 + 3);
  text(i5*100, 80*4+3, height - i5 + 3);
  text(i6*100, 80*5+3, height - i6 + 3);
  text(i7*100, 80*6+3, height - i7 + 3);
  text(i8*100, 80*7+3, height - i8 + 3);
  text(i9*100, 80*8+3, height - i9 + 3);
  text(i10*100, 80*9+3, height - i10 + 3);
  text(i11*100, 80*10+3, height - i11 + 3);
  text(i12*100, 80*11+3, height - i12 + 3);
  text(i13*100, 80*12+3, height - i13 + 3);
  text(i14*100, 80*13+3, height - i14 + 3);
  text(i15*100, 80*14+3, height - i15 + 3);
}