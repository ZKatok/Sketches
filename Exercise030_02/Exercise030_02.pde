size(500, 500);

for (int i = 0; i < 500; i += 5) {
  for (int j = 0; j < 500; j += 5) {
    if (random(100) < 50) {
      int a = int(random(20));
      ellipse(i, j, a, a);
    }
  }
}