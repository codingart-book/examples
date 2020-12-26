// Coding Art Book
// Yu Zhang + Mathias Funk, 2020

// mouse drawing colorful dots with random fill 
// according to color wheel

void setup() {
  size(400, 400); 
  background(0); 
  noStroke();
  
  // change color mode from RGB to HSB
  colorMode(HSB);
}

void draw() {
  // blur previous output
  filter(BLUR, 1);
  // mouse is pressed, draw color blobs
  if (mousePressed) {
    // create two points for center and mouse position
    PVector center = new PVector(width/2, height/2);
    PVector mouse = new PVector(mouseX, mouseY);
    // calculate angle between center and mouse in radians
    float angle = PVector.sub(mouse, center).heading();
    // convert from radians to degrees in range [-180, 180]
    angle = degrees(angle);
    // convert from degrees to a hue value in range [0, 255]
    float hue = map(angle, -180, 180, 0, 255);
    // move drawing position to mouse position
    translate(mouseX, mouseY);
    // draw 5 blobs per frame
    for (int i = 0; i < 5; i++) {
      // choose HSB color with random hue
      fill(random(hue - 20, hue + 20) % 255, 255, 255);
      // generate random position around mouse position
      PVector pos = new PVector(random(-20, 20), random(-20, 20));
      // calc. blob size based distance distance from mouse
      float size = 20 - pos.dist(new PVector());
      // draw blob
      ellipse(pos.x, pos.y, size, size);
    }
  }
}
