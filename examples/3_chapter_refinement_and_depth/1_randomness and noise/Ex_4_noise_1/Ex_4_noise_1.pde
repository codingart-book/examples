// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// visual comparison of random and noise functions

void setup() {
  size(400, 200); 
  background(255); 
  noStroke();
}

void draw() {
  // first the 'random' generated position
  fill(255, 0, 255, 100);
  rect(frameCount, random(0, height), 5, 5);

  // second the 'noise' generated position
  fill(255, 0, 0, 100);
  ellipse(frameCount, map(noise(frameCount/100.), 0, 1, 0, height), 5, 5);
}
