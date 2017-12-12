void setup() {
  size(500, 500, P3D);
  colorMode(HSB, 100, 100, 100);
  sphereDetail(10);
  lights();

  pushMatrix();
  translate(100, -50, 0);
  for (int i = 0; i<5; i++) { // five boxes on left
    translate(0, 100, 0);
    fill(i*20, 100, 100);
    box(50);
  }
  popMatrix();
  
  pushMatrix();
  fill(100);
  translate(400, 250, 300);
  for (int i = 0; i<5; i++) { // spheres in a straight line going into the screen
    translate(0, 0, -100);
    sphere(30);
  }
  popMatrix();
  
  noFill();
  pushMatrix();
  translate(250, 100, 0);
  rotateX(PI/4);
  box(70);
  popMatrix();
  
  pushMatrix();
  translate(250, 250, 50);
  rotateY(PI/4);
  box(70);
  translate(0, 0, -50);
  rotateX(PI/4);
  fill(50);
  box(70);
  popMatrix();
  
  noFill();
  pushMatrix();
  translate(250, 400, 100);
  rotateZ(PI/4);
  box(70);
  popMatrix();
}