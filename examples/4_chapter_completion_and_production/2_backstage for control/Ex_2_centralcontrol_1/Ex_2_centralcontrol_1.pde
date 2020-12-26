// Coding Art Book
// Yu Zhang + Mathias Funk, 2020

// colored random rectangle example 1 

void setup() {
  size(400, 400); 
  noStroke();
}

void draw() {
  colorMode(HSB);
  background(175, 255, 10);
  fill(175, 155, 255);
  rect(200, 20, 100, 100);
  for (int i = 0; i < 20; i++) {
    fill(random(175, 200), 255, 255, 50);
    ellipse(random(0, mouseX), random(0, height), 50, 50);
  }
  fill(175, 255, 155);
  rect(20, 200, 100, 100);
}
