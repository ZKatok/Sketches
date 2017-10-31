String text = "text";
String g = "ground";
String gr = g+g+g+g+g+g+g+g+g+g+g+g+"\n"+g+g+g+g+g+g+g+g+g+g+g+g+"/n";

void setup() {
  size(700, 700);
  background(0);
}

void draw() {
  int half = width/2;
  int quarter = width/4;
  int eighth = width/8;
  
  stroke(22, 255, 3);
  strokeWeight(5);
  line(half, eighth, half, 7*eighth); // trunk
  line(3*eighth, quarter, 5*eighth, quarter); // top
  line(quarter, 3.5*eighth, 3*quarter, 3.5*eighth); // middle
  line(eighth, 5*eighth, 7*eighth, 5*eighth); // bottom
  
  fill(255, 0, 0);
  textSize(30);
  textAlign(CENTER, BOTTOM);
  text(text, half, eighth);
  textAlign(LEFT, BOTTOM);
  text(text, 3*eighth, quarter);
  textAlign(RIGHT, BOTTOM);
  text(text, 5*eighth, quarter);
  textAlign(LEFT, BOTTOM);
  text(text, quarter, 3.5*eighth);
  textAlign(RIGHT, BOTTOM);
  text(text, 3*quarter, 3.5*eighth);
  textAlign(LEFT, BOTTOM);
  text(text, eighth, 5*eighth);
  textAlign(RIGHT, BOTTOM);
  text(text, 7*eighth, 5*eighth);
  
  textAlign(LEFT, TOP);
  textLeading(10);
  fill(142, 87, 50);
  text(gr+gr+gr+gr+gr+gr, -20, 7*eighth);
}