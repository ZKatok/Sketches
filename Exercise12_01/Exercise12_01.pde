int a = 1;
int b = 1;
int turn = 0;
int sum;

void setup() {
  size(135, 1000);
  background(150);
}

void draw() {
  frameRate(2);
  turn++;
  sum = a + b;
  if(turn%2 == 1) {
    a = sum;
    stroke(5, 255, 73); // green. 
  } else {
    b = sum;
    stroke(5, 98, 255); // blue. I might as well switch colors in the same
  }                     // switchy thing rather than create another switchy thing.
  
  strokeWeight(9);
  if (sum < 1000) {
    line(turn*9, 0, turn*9, sum);
  }
  
  println(sum);
}