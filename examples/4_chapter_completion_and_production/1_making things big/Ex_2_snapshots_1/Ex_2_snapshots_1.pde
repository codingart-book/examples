// Coding Art Book
// Yu Zhang + Mathias Funk, 2020

// saving snapshots from canvas 

void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  for (int i = 0; i < 20; i++) {
    ellipse(random(0, 400), random(0, 400), 20, 20);
  }
  // save the canvas as a PNG image file, include
  // a four-digit enumeration in the file name
  saveFrame("image-####.png");
}
