// Coding Art Book
// Mathias Funk + Yu Zhang, 2023

// testing blurred shapes for MOUNTROTHKO example case

void setup() {
  size(800, 800);
}

void draw() {
  background(255);
  noStroke();

  for (int y = 0; y < 100; y += 10) {
    fill(random(224, 250), random(150, 166), random(86, 135));
    rect(100, y, 200, 50 + mouseX);
  }
  for (int y = 0; y < 100; y += 10) {
    fill(random(224, 250), random(41, 166), random(30, 53));
    rect(100, y + 60, 200, 350 - mouseX);
  }
  for (int y=0; y < 100; y += 10) {
    fill(random(224, 250), random(41, 166), random(30, 53));
    rect(300, y, 400, 300 + mouseX);
  }
  for (int y=0; y < 100; y += 10) {
    fill(random(220, 230), random(41, 86), random(53, 86));
    rect(50, y, 50, 10 + mouseY);
  }
  for (int y=0; y < 100; y += 10) {
    fill(random(230, 255), random(166, 250), random(0, 30));
    rect(700, y, 80, 500 + mouseY);
  }
  filter(BLUR, 20);
}

void keyPressed() {
  if (key=='r') {
    saveFrame("testrendering###.png");
  }
}
