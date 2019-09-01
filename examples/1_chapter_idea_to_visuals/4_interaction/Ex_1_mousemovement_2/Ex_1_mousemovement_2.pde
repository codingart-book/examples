// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// line movement with mouse

void setup() {
  size(600, 600);
}

void draw() {
  // white background, black line color
  background(255);
  stroke(0);

  // if the mouse is pressed, then ...  
  if (mousePressed) {
    // ... draw an interesting line
    line(mouseX, 150, 150, mouseY);
  }
}
