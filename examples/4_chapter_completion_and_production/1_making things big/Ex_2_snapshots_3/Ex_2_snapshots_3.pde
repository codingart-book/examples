// Coding Art Book
// Yu Zhang + Mathias Funk, 2020

// print out frame number on key press 

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
  // print out the current frame number
  println(frameCount);
}
