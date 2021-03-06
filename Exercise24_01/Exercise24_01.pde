// TOS equation: v = (w^3)c
// TNG+ equation: v = (w^10/3)c

float v2; // velocity for TOS
float v1; // velocity for TNG+
int u; // constant; one eighth of the screen width
int x1; // keep track of horizontal distance of TNG+ graph
int x2; // keep track of horizontal distance of TOS graph

void setup() {
  size(900, 800);
  u = width/8;
  x1 = -1*u;

  translate(width, height);
  rotate(PI);

  beginShape(); // TNG+ graph
  vertex(width, 0);
  vertex(0, 0);
  for (int w = 9; w > 0; w--) { // w is warp factor
    v1 = pow(w, 3.33);
    x1 += u;
    vertex(x1, v1/2);
    fill(0);
    println(v1);
  }
  fill(216, 0, 0); // red
  endShape(CLOSE);

  x2 = -1*u;
  beginShape(); // TOS graph
  vertex(width, 0);
  vertex(0, 0);
  for (int w = 9; w > 0; w--) { // w is warp factor
    v2 = pow(w, 3);
    x2 += u;
    vertex(x2, v2/2);
    fill(0);
    println(v2);
  }
  fill(224, 207, 11); // gold
  endShape(CLOSE);
  
   pushMatrix();
   rotate(PI);
   translate(-width, -height);
   fill(0);
   textAlign(LEFT, TOP);
   textSize(20);
   text("The gold graph is the warp speed system of TOS."
   +"\n"+"The red graph is the warp speed system of TNG and later series."
   +"\n"+"The x-axis is the warp factor on a scale of 1 to 9."
   +"\n"+"The y-axis is the velocity in terms of the speed of light;"
   +"\n"+"      each pixel is two times the speed of light.",
   0, 0);
}