// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// preset mouse position for rendering 

void setup() {
  size(400, 400);
  mouseX = 180;
}

void draw() {
  background(0);
  for (int i = 0; i < 20; i++) {
    ellipse(random(0, mouseX), random(0, height), 5, 5);
  }
}
