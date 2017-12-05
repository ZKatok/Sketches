PShape s; // the hexagon triangle dynamic duo

void setup() {
  size(500, 500);
  s = createShape();
  s.beginShape();
  s.stroke(5);
  s.vertex(0, 76);
  s.vertex(-22, 38);
  s.vertex(0, 0);
  s.vertex(44, 0);
  s.vertex(66, 38);
  s.vertex(44, 76);
  s.vertex(22, 114);
  s.vertex(0, 76);
  s.vertex(44, 76);
  s.endShape(CLOSE);
}

void draw() {
  shape(s, 100, 50); // first shape
  shape(s, 234, 50); // third shape
  
  pushMatrix(); // second shape
  translate(211, 164);
  rotate(PI);
  shape(s, 0, 0);
  popMatrix();
  
  pushMatrix(); // fourth shape
  translate(345, 164);
  rotate(PI);
  shape(s, 0, 0);
  popMatrix();
}