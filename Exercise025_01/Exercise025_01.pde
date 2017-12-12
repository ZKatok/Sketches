void setup() {
  size(300, 300, P3D);
  stroke(255, 0, 0); // red
  line(0, 0, 0, 300, 0, 0); // x-axis
  stroke(0, 255, 0); // green
  line(0, 0, 0, 0, 300, 0); // y-axis
  stroke(0, 0, 255); // blue
  line(0, 0, 0, 0, 0, -300); // z-axis
  stroke(0);
  sphere(50);
}