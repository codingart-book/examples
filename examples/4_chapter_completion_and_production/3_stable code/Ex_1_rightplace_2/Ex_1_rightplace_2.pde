// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// fixed texture example 

PGraphics texture;
void setup() {
  size(1000, 1000);
  texture = createGraphics(1000, 1000);
}

void draw() {
  texture.beginDraw();
  texture.background(0);
  // draw more things here...
  texture.endDraw();
  tint(255, 20);
  image(texture, 0, 0);
  println(frameRate);
}
