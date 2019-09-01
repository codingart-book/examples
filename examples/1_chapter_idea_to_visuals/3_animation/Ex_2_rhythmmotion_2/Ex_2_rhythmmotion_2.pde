// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// shifting movement (with sine)

void setup() {
  size(400, 400);
  rectMode(CENTER);
}

void draw() {
  background(160);
  translate(width/2, height/2);
  rect(sin(frameCount/20.0) * width/2, 20, 20, 20);
}
