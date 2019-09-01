// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// mouse drawing lines with randomized stroke 

void setup() {
  size(400, 400);
  background(255);
}

void draw() {
  // move to draw around the mouse position
  translate(mouseX, mouseY);
  // change the color randomly
  stroke(random(0, 200), 10, 50);
  // draw a vertical line from random x-position
  // to another random x-position
  line(randomGaussian(), -10, randomGaussian(), 10);
}
