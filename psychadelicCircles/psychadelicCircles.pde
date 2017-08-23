int a; int b; int c; int d; int e; int f; int g; int h;
int i; int j; int k; int l; int m; int n; int o; int p; // different letter for each triangle
int q; int r; int s; int t; int u; int v; int w; int x; // allows the hues to be staggered
int colorChange;
int moveCircle;

void setup() {
  size(600, 600);
  colorMode(HSB, 480, 100, 100);
  a = 0; b = 20; c = 40; d = 60; e = 80; f = 100; g = 120; h = 140; 
  i = 160; j = 180; k = 200; l = 220; m = 240; n = 260; o = 280; p = 300; 
  q = 320; r = 340; s = 360; t = 380; u = 400; v = 420; w = 440; x = 460;
}

void draw() {
  triangles();
  circles();
}

void triangles() { //background that changes colors in a circley way
  colorChange = colorChange + 1;

  // draw them triangles to fill up the screeeeeeeeeeen
  noStroke();

  // top
  fill(colorChange + a, 600, 600);
  triangle(0, 0, 100, 0, 300, 300);
  fill(colorChange + b, 600, 600);
  triangle(100, 0, 200, 0, 300, 300);
  fill(colorChange + c, 600, 600);
  triangle(200, 0, 300, 0, 300, 300);
  fill(colorChange + d, 600, 600);
  triangle(300, 0, 400, 0, 300, 300);
  fill(colorChange + e, 600, 600);
  triangle(400, 0, 500, 0, 300, 300);
  fill(colorChange + f, 600, 600);
  triangle(500, 0, 600, 0, 300, 300);

  // right
  fill(colorChange + g, 600, 600);
  triangle(600, 0, 600, 100, 300, 300);
  fill(colorChange + h, 600, 600);
  triangle(600, 100, 600, 200, 300, 300);
  fill(colorChange + i, 600, 600);
  triangle(600, 200, 600, 300, 300, 300);
  fill(colorChange + j, 600, 600);
  triangle(600, 300, 600, 400, 300, 300);
  fill(colorChange + k, 600, 600);
  triangle(600, 400, 600, 500, 300, 300);
  fill(colorChange + l, 600, 600);
  triangle(600, 500, 600, 600, 300, 300);

  // bottom
  fill(colorChange + m, 600, 600);
  triangle(600, 600, 500, 600, 300, 300);
  fill(colorChange + n, 600, 600);
  triangle(500, 600, 400, 600, 300, 300);
  fill(colorChange + o, 600, 600);
  triangle(400, 600, 300, 600, 300, 300);
  fill(colorChange + p, 600, 600);
  triangle(300, 600, 200, 600, 300, 300);
  fill(colorChange + q, 600, 600);
  triangle(200, 600, 100, 600, 300, 300);
  fill(colorChange + r, 600, 600);
  triangle(100, 600, 0, 600, 300, 300);

  // left
  fill(colorChange + s, 600, 600);
  triangle(0, 600, 0, 500, 300, 300);
  fill(colorChange + t, 600, 600);
  triangle(0, 500, 0, 400, 300, 300);
  fill(colorChange + u, 600, 600);
  triangle(0, 400, 0, 300, 300, 300);
  fill(colorChange + v, 600, 600);
  triangle(0, 300, 0, 200, 300, 300);
  fill(colorChange + w, 600, 600);
  triangle(0, 200, 0, 100, 300, 300);
  fill(colorChange + x, 600, 600);
  triangle(0, 100, 0, 0, 300, 300);

  // gotta do the same thing over and over
  // to account for the staggered values :/
  if (a + colorChange == 480) {
    a = a - 480;
  }
  if (b + colorChange == 480) {
    b = b - 480;
  }
  if (c + colorChange == 480) {
    c = c - 480;
  }
  if (d + colorChange == 480) {
    d = d - 480;
  }
  if (e + colorChange == 480) {
    e = e - 480;
  }
  if (f + colorChange == 480) {
    f = f - 480;
  }
  if (g + colorChange == 480) {
    g = g - 480;
  }
  if (h+ colorChange == 480) {
    h = h - 480;
  }
  if (i + colorChange == 480) {
    i = i - 480;
  }
  if (j + colorChange == 480) {
    j = j - 480;
  }
  if (k + colorChange == 480) {
    k = k - 480;
  }
  if (l + colorChange == 480) {
    l = l - 480;
  }
  if (m + colorChange == 480) {
    m = m - 480;
  }
  if (n + colorChange == 480) {
    n = n - 480;
  }
  if (o + colorChange == 480) {
    o = o - 480;
  }
  if (p + colorChange == 480) {
    p = p - 480;
  }
  if (q + colorChange == 480) {
    q = q - 480;
  }
  if (r + colorChange == 480) {
    r = r - 480;
  }
  if (s + colorChange == 480) {
    s = s - 480;
  }
  if (t + colorChange == 480) {
    t = t - 480;
  }
  if (u + colorChange == 480) {
    u = u - 480;
  }
  if (v + colorChange == 480) {
    v = v - 480;
  }
  if (w + colorChange == 480) {
    w = w - 480;
  }
  if (x + colorChange == 480) {
    x = x - 480;
  }
}

void circles() { // by pressing a key, you cause a circle to drift across the screen
  // do the boolean thing for each key in order to allow
  int drawA = 0;
  // each circle to stay on screen without holding down a key
  switch(keyPressed) {
    case 'a':
      drawA = 1;
    case 'b':
      drawA = 0;
  }
  // actually draw the circles
  moveCircle = moveCircle + 1;
  if (drawA == 1) {
    stroke(0, 100, 100);
    strokeWeight(3);
    fill(0);
    ellipse(75, 50, 50, 50);
  }
  println(drawA);
}