int i;

size(514, 514);
colorMode(HSB, 512, 100, 100);
for (i = 512; i > 0; i = i/2) {
  strokeWeight(3);
  fill(i, 100, 100);
  rect(0, 0, i, i);
}