// Coding Art Book
// Yu Zhang + Mathias Funk, 2020

void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  rotate(radians(frameCount));
  ellipse(20, 20, 20, 20);
}
