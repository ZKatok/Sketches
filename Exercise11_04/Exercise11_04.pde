/* There are six rows. Each row (except the divider row in the center) has
 * two rectangles; one  covering the first two thirds of the screen and one covering
 * the second two thirds of the screen. They overlap in the middle third.
 *
 * The top three rows have two complementary colors. The bottom three rows have
 * two colors 50 points apart on the 0-300 HSB color system.
 *
 * Within each set of three, the top row is transparency 50%, the middle row is the ADD 
 * blend mode, and the bottom row is the SUBTRACT blend mode.
 */

colorMode(HSB, 300, 100, 100);

color red = color(0, 100, 100);
color blue = color(150, 100, 100);
color darkBlue = color(200, 100, 100);
color purple = color(250, 100, 100);

size(700, 700);
noStroke();

// first row
fill(red, 50);
rect(0, 0, 2*width/3, height/7);
fill(blue, 50);
rect(width/3, 0, 2*width/3, height/7);
// fourth row
fill(darkBlue, 50);
rect(0, 4*height/7, 2*width/3, height/7);
fill(purple, 50);
rect(width/3, 4*height/7, 2*width/3, height/7);

blendMode(ADD);
// second row
fill(red);
rect(0, height/7, 2*width/3, height/7);
fill(blue);
rect(width/3, height/7, 2*width/3, height/7);
// fifth row
fill(darkBlue);
rect(0, 5*height/7, 2*width/3, height/7);
fill(purple);
rect(width/3, 5*height/7, 2*width/3, height/7);

blendMode(SUBTRACT);
// third row
fill(red);
rect(0, 2*height/7, 2*width/3, height/7);
fill(blue);
rect(width/3, 2*height/7, 2*width/3, height/7);
// sixth row
fill(darkBlue);
rect(0, 6*height/7, 2*width/3, height/7);
fill(purple);
rect(width/3, 6*height/7, 2*width/3, height/7);