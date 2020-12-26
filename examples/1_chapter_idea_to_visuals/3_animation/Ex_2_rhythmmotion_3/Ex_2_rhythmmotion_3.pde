// Coding Art Book
// Yu Zhang + Mathias Funk, 2020

// two rectangles with bouncing motion

void setup() {
  size(400, 400);
  rectMode(CENTER);
}

void draw() {
  background(160);
  translate(0, height/2);

  // linear rectangle
  rect(frameCount, 20, 20, 20);

  // bouncing rectangle
  rect(frameCount, -abs(sin(frameCount/20.0)) * 60, 20, 20);
}
