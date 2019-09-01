// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// random dots in circle

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
  // check that distance between (x,y) and canvas
  // center is less than 150, only then draw ellipse
  if (dist(x, y, width/2, height/2) < 150) {
    ellipse(x, y, 15, 15);
  }
  filter(BLUR, 1);
}
