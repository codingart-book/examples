// Coding Art Book
// Yu Zhang + Mathias Funk, 2020

PVector position = new PVector();
float energy = 0;
void setup() {
  size(400, 400);
  stroke(200);
}

void draw() {
  // data
  // add distance to energy
  energy = energy + dist(mouseX, mouseY, pmouseX, pmouseY);

  // reduce energy every frame by 2% (100%-98%)
  energy = energy * 0.98;
  float speed = map(energy, 0, 30, 4, 0.5);
  float distance = map(energy, 0, 400, 30, 100);
  position.x = mouseX + cos(radians(frameCount) * speed) * distance;
  position.y = mouseY + sin(radians(frameCount) * speed) * distance;
  // drawing output based on data
  background(0);
  ellipse(position.x, position.y, 20, 20);
  // add two lines
  line(position.x, position.y, 0, height/2);
  line(position.x, position.y, width, height/2);
}
