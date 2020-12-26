// Coding Art Book
// Yu Zhang + Mathias Funk, 2020

// mouse interaction 1 

void setup() {
  size(400, 400);
  background(0); 
  noStroke(); 
  colorMode(HSB);
}

void draw() {
  // only blur canvas if the mouse is not pressed
  filter(BLUR, mousePressed ? 0 : 1);
  // translate to mouse position
  translate(mouseX, mouseY);
  // compute the distance that the mouse
  // has moved this frame
  float size = 5 + dist(pmouseX, pmouseY, mouseX, mouseY);
  // generate sparkles
  for (int i = 0; i < 5; i++) {
    // draw colorful sparkles if mouse is pressed
    if (mousePressed) {
      fill(100 + random(-20, 20), 255, 255, 180);
    } else {
      fill(255, 180);
    }
    ellipse(size * random(-1, 1), size * random(-1, 1), 2, 2);
  }
}
