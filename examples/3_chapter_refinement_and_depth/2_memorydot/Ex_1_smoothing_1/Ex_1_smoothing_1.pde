// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// smoothing mouse movement 1

void setup() {
  size(400, 400); 
  background(0);
  noStroke(); 
  colorMode(HSB);
}

void draw() {
  filter(BLUR, 1);
  // paint a bright blue dot
  fill(170, 255, 255);
  // at mouse position
  PVector m = new PVector(mouseX, mouseY);
  ellipse(m.x, m.y, 30, 30);
}
