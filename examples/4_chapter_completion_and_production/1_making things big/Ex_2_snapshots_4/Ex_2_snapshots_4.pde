// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// saving snapshot from canvas for specific frame 

void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  for (int i = 0; i < 20; i++) {
    ellipse(random(0, width), random(0, height), 20, 20);
    if (frameCount == 108) {
      saveFrame("image-####.png");

      // optional: quit sketch after rendering
      System.exit(0);
    }
  }
}
