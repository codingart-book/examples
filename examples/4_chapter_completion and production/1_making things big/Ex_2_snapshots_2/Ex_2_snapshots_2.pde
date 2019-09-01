// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// saving snapshot from canvas on key press 

void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  for (int i = 0; i < 20; i++) {
    ellipse(random(0, width), random(0, height), 20, 20);
  }
}

void keyPressed() {
  // save the canvas as a PNG image file, include
  // a four-digit enumeration in the file name
  saveFrame("image-####.png");
}
