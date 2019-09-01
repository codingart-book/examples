// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// save current mouse position on mouse click 

void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  for (int i = 0; i < 20; i++) {
    ellipse(random(0, mouseX), random(0, height), 5, 5);
  }
}

void mouseClicked() {
  // print out the current mouse position
  println(mouseX, mouseY);
}
