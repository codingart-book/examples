// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// simple movement with rotation

void setup() {
  size(400, 400);
  rectMode(CENTER);
}

void draw() {
  background(160);
  translate(frameCount, 30);
  rotate(radians(frameCount * (360 / (20 * PI))));
  rect(0, 0, 20, 20);
}
