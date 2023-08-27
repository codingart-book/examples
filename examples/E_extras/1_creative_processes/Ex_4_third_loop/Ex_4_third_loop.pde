// Coding Art Book
// Yu Zhang + Mathias Funk, 2020

PVector position = new PVector();
void setup() {
  size(400, 400);
}

void draw() {
  // data
  float speed = 10;
  float distance = 20;
  position.x = mouseX + cos(radians(frameCount) * speed) * distance;
  position.y = mouseY + sin(radians(frameCount) * speed) * distance;
  // drawing output based on data
  background(0);
  ellipse(position.x, position.y, 20, 20);
}
