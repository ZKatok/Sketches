PImage fruit1;
PImage fruit2;
PImage fruit3;
PImage fruit4;
PImage fruit5;
PImage fruit6;
PImage fruit7;
PImage fruit8;

void setup() {
  size(975, 600);
  fruit1 = loadImage("fruit-salad.jpg");
  fruit2 = loadImage("fruit-salad.jpg");
  fruit2.filter(GRAY);
  fruit3 = loadImage("fruit-salad.jpg");
  fruit3.filter(INVERT);
  fruit4 = loadImage("fruit-salad.jpg");
  fruit4.filter(ERODE);
  fruit5 = loadImage("fruit-salad.jpg");
  fruit5.filter(DILATE);
  fruit6 = loadImage("fruit-salad.jpg");
  fruit6.filter(BLUR, 4);
  fruit7 = loadImage("fruit-salad.jpg");
  fruit7.filter(POSTERIZE, 3);
  fruit8 = loadImage("fruit-salad.jpg");
  fruit8.filter(THRESHOLD, .7);
  fill(0);
  
  // center text
  textSize(40);
  textAlign(CENTER, CENTER);
  text("FILTERS", width/2, height/2);

  // images
  textSize(20);
  textAlign(LEFT, TOP);
  
  image(fruit1, 0, 0); // top left
  text("Original image", 3, 0);

  image(fruit2, 325, 0); // top center
  text("Gray", 328, 0);

  image(fruit3, 650, 0); // top right
  fill(255);
  text("Invert", 653, 0);

  image(fruit4, 0, 200); // center left
  fill(0);
  text("Erode", 3, 200);

  image(fruit5, 650, 200); // center right
  text("Dilate", 653, 200);

  image(fruit6, 0, 400); // bottom left
  text("Blur; parameter 4", 3, 400);

  image(fruit7, 325, 400); // bottom center
  text("Posterize; parameter 3", 328, 400);

  image(fruit8, 650, 400); // bottom right
  text("Threshold; parameter 0.7", 653, 400);
}