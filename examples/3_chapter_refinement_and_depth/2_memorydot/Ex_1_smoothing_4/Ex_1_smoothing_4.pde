// Coding Art Book
// Yu Zhang + Mathias Funk, 2020

// smoothing mouse movement 4 

MemoryDot m, l, xl;
void setup() {
  size(400, 400); 
  noStroke(); 
  colorMode(HSB);
  background(0);
  m = new MemoryDot(30);
  l = new MemoryDot(60);
  xl = new MemoryDot(90);
}

void draw() {
  filter(BLUR, 1);
  // paint first blue dot
  fill(170, 120, 100 + xl.energy * 200);
  // update memory dot with current mouse position
  xl.update(mouseX, mouseY);
  // draw at position given by memory dot
  ellipse(xl.x, xl.y, 90, 90);
  // paint other blue dots
  fill(170, 160, 100 + l.energy * 200);
  l.update(mouseX, mouseY);
  ellipse(l.x, l.y, 60, 60);
  fill(170, 200, 100 + m.energy * 50);
  m.update(mouseX, mouseY);
  ellipse(m.x, m.y, 30, 30);
}
