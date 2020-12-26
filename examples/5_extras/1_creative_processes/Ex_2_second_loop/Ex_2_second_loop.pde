// Coding Art Book
// Yu Zhang + Mathias Funk, 2020

PVector position = new PVector();
void setup() {
  size(400, 400);
}

void draw() {
  // data
  position.x = width/2 + cos(radians(frameCount)) * 20;
  position.y = height/2 + sin(radians(frameCount)) * 20;
  // drawing output based on data
  background(0);
  ellipse(position.x, position.y, 20, 20);
}
