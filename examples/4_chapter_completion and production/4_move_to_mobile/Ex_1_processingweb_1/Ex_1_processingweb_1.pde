// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// Processing mouse drawing example
// find the code for the web in the web_content folder

void setup() {
  size(640, 480);
}

void draw() {
  if (mousePressed) {
    fill(0);
  } else {
    fill(255);
  }
  ellipse(mouseX, mouseY, 80, 80);
}
