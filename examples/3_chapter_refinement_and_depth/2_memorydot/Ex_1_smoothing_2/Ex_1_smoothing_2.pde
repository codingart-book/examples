// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// smoothing mouse movement 2 

MemoryDot m;
void setup() {
  size(400, 400); 
  noStroke(); 
  colorMode(HSB);
  background(0);
  m = new MemoryDot(30);
}

void draw() {
  filter(BLUR, 1);
  // paint a bright blue dot
  fill(170, 255, 255);
  // update memory dot with current mouse position
  m.update(mouseX, mouseY);
  // draw at position given by memory dot
  ellipse(m.x, m.y, 30, 30);
}
