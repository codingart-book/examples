// Coding Art Book
// Yu Zhang + Mathias Funk, 2020

// random dots 2

void setup() {
  size(400, 400);
  background(35, 27, 107);
  noStroke();
}

void draw() {
  fill(238, 120, 138, 250);
  // create two variables x, y for position
  float x = random(0, width);
  float y = random(0, height);
  ellipse(x, y, 15, 15);
  filter(BLUR, 1);
}
