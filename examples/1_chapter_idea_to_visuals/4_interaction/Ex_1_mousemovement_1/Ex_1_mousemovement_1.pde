// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// mouse movement

void setup() {
  size(400, 400);
  rectMode(CENTER);
}

void draw() {
  background(160);

  // the first rectangle is static
  ellipse(50, 75, 50, 50);

  // the second rectangle is dynamic
  ellipse(mouseX, mouseY, 50, 50);
}
