// Coding Art Book
// Yu Zhang + Mathias Funk, 2020

// rectangle moving in a circle 

void setup() {
  size(400, 400);
  rectMode(CENTER);
}

void draw() {
  background(160);
  translate(width/2, height/2);
  rotate(radians(frameCount*(360/(20*PI))));
  rect(50, 0, 20, 20);
}
