// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// using noise for fire bar simulation

void setup() {
  size(400, 400); 
  noStroke(); 
  background(0);
}

void draw() {
  // add blur effect
  filter(BLUR, 1);
  // draw rectangles across canvas
  for (int i = 0; i < width; i += 10) {
    // multiply noise output (0..1) with 255
    // because 255 is the largest color value
    fill(noise(i/10. + frameCount/100.) * 255);
    // multiply noise output (0..1) with 15
    // because we want 15 pixels max size for rectangles
    float size = noise(0.3 + frameCount/1000.) * 15;
    rect(i, frameCount % height, size, size);
  }
}
