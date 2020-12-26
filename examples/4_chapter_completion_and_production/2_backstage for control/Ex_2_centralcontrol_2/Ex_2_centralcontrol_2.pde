// Coding Art Book
// Yu Zhang + Mathias Funk, 2020

// colored random rectangle example 2
// with variable controlling color

void setup() {
  size(400, 400); 
  noStroke();
}

void draw() {
  colorMode(HSB);
  // 175 for blue, 100 for green
  int mainColor = 175;
  background(mainColor, 255, 10);
  fill(mainColor, 155, 255);
  rect(200, 20, 100, 100);
  for (int i = 0; i < 20; i++) {
    fill(random(mainColor, mainColor + 25), 255, 255, 50);
    ellipse(random(0, mouseX), random(0, height), 50, 50);
  }
  fill(mainColor, 255, 155);
  rect(20, 200, 100, 100);
}
