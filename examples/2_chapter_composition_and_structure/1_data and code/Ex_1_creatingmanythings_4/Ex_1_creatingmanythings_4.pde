// Coding Art Book
// Yu Zhang + Mathias Funk, 2020

// drawing a trace of dots with mouse

PVector[] ellipses = new PVector[60];

void setup() {
  size(400, 400); 
  background(35, 27, 107); 
  noStroke();

  // initialize the array
  for (int i = 0; i < ellipses.length; i++) {
    ellipses[i] = new PVector();
  }
}

void draw() {
  filter(BLUR, 1);

  // pick one position from the array
  PVector p = ellipses[frameCount % ellipses.length];

  // set mouse position if mouse is pressed
  if (mousePressed) {
    p.set(mouseX, mouseY);
  }

  // draw the position
  fill(238, 120, 138, 250);
  ellipse(p.x, p.y, 15, 15);
}
