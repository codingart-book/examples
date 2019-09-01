// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// mouse controlling random choice of shape and color

PVector[] positions = new PVector[100];
void setup() {
  size(400, 400); 
  noStroke(); 
  rectMode(CENTER);

  // initialize 100 random positions
  for (int i = 0; i < 100; i++) {
    positions[i] = new PVector(random(width), random(height));
  }
}

// empty draw
void draw() {
}

// we draw when the mouse has moved
void mouseMoved() {
  background(0);
  // loop through all positions
  for (PVector position : positions) {
    // red fill color if random value is 
    // smaller than horizontal mouse position
    if (random(0, width) < mouseX) {
      fill(255, 0, 0);
    } else {
      fill(0, 0, 255);
    }
    // draw rectangle if random value is 
    // smaller than vertical mouse position
    if (random(0, height) < mouseY) {
      rect(position.x, position.y, 10, 10);
    } else {
      ellipse(position.x, position.y, 10, 10);
    }
  }
}
