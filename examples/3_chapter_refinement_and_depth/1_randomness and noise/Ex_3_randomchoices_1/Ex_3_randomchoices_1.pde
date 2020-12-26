// Coding Art Book
// Yu Zhang + Mathias Funk, 2020

// mouse drawing colorful dots with random fill 
// according to color palette

void setup() {
  size(400, 400); 
  background(0); 
  noStroke();

  // change color mode from RGB to HSB
  colorMode(HSB);
}

void draw() {
  // color palette as array of type color
  // remember that colors are in HSB mode
  color[] palette = {
    color(160, 255, 255), 
    color(220, 200, 200), 
    color(120, 200, 200), 
    color(120, 0, 220), 
    color(220)
  };

  // blur previous output
  filter(BLUR, 1);
  // mouse is pressed, draw color blobs
  if (mousePressed) {
    // move drawing position to mouse position
    translate(mouseX, mouseY);
    // draw 5 blobs per frame
    for (int i = 0; i < 5; i++) {
      // choose color randomly from palette array
      int paletteChoice = int(random(0, palette.length));
      fill(palette[paletteChoice]);
      // generate random position around mouse position
      PVector pos = new PVector(random(-20, 20), random(-20, 20));
      // calc. blob size based distance distance from mouse
      float size = 20 - pos.dist(new PVector());
      // draw blob
      ellipse(pos.x, pos.y, size, size);
    }
  }
}
