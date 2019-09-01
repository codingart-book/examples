// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// backstage with keyboard erase 

void setup() {
  size(400, 400); 
  background(0); 
  noStroke(); 
  rectMode(CENTER);
}

void draw() {
  fill(40 + 20 * noise(0.8 - frameCount/2000.), 155, noise(frameCount/100.) * 255, random(10, 200));
  rect(width * noise(0.2 + frameCount/100.), height * noise(0.3 + frameCount/200.), 100, 100);
}

void keyPressed() {
  background(0);
}
