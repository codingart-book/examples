// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// backstage with keyboard control 

void setup() {
  size(400, 400); 
  noStroke(); 
  colorMode(HSB);
  rectMode(CENTER);
}

void draw() {
  background(0);
  if (key == '1') {
    fill(50, 155, 255);
    rect(width/2, height/2, 100, 100);
  } else if (key == '2') {
    fill(100, 155, 255);
    ellipse(width/2, height/2, 100, 100);
  } else if (key == '3') {
    fill(150, 155, 255);
    rect(width/2, height/2, 100, 100);
  } else if (key == '4') {
    fill(200, 155, 255);
    ellipse(width/2, height/2, 100, 100);
  } else {
    fill(0, 0, 50);
    ellipse(width/2, height/2, 100, 100);
  }
}
