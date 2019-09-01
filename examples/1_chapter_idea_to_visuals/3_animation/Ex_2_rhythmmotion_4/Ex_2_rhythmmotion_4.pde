// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// two rectangles with bouncing motion and color change

void setup() {
  size(400, 400);
  rectMode(CENTER);
}

void draw() {
  background(160);
  translate(0, height/2);

  // change color according to frameCount
  fill(frameCount % (20 * PI)*10);

  // bouncing rectangle (same as before)
  rect(frameCount, -abs(sin(frameCount/20.0)) * 60, 20, 20);

  // linear rectangle with snap-back motion
  rect(frameCount, 20, 20, 20);
  translate(25, 15);
  rotate(radians(90 - (frameCount % (20 * PI))));
}
