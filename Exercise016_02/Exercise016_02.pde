void setup() {
 background(0); 
 size(300,300);
}

void draw() {
  frameRate(1);
  for(int num = 20; num < 300; num+=20) {
    stroke(255);
    line(0, num, 300, num);
  }
} 