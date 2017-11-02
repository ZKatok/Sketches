int numberForTheManOfNagy;
float fancierNumberForTheManOfNagy;
// Don't use long and inefficient variable names at home, kids. 

void setup() {
  numberForTheManOfNagy = 0; // assigning a value
  fancierNumberForTheManOfNagy = 3.2; // floats can be decimals because they're FANCIER
}

void draw() {
  frameRate(1); // 1 loop of draw() per second instead of the standard 60 because it's easier for the eyes to see what's going on in console
<<<<<<< HEAD

  fancierNumberForTheManOfNagy = fancierNumberForTheManOfNagy + 0.5; // adds 0.5 every time
  numberForTheManOfNagy++; // the "++" is the same as saying that variable equals itself plus 1

=======
  
  fancierNumberForTheManOfNagy = fancierNumberForTheManOfNagy + 0.5; // adds 0.5 every time
    numberForTheManOfNagy++; // the "++" is the same as saying that variable equals itself plus 1
  
>>>>>>> cd8bd9f33dc6cb17f4c111c1acda0531ac1f9b58
  println(numberForTheManOfNagy, "+", fancierNumberForTheManOfNagy, "=", numberForTheManOfNagy+fancierNumberForTheManOfNagy, ";", "numbersForTheManOfNagy");
  // notice that the quotes have it print the phrase, but the lack of quotes has it print the value of the variable or of the expression.
}