// Coding Art Book
// Yu Zhang + Mathias Funk, 2020

// interpolation between two colored balls 2 

PVector left, right;
void setup() {
  size(400, 200); 
  noStroke(); 
  colorMode(HSB);
  left = new PVector(50, 0, color(0, 255, 255));
  right = new PVector(350, 0, color(0, 255, 255));
}

void draw() {
  background(0);
  // move two balls vertically
  left.y = getBallYPosition(frameCount);
  right.y = getBallYPosition(frameCount - 1000);
  // draw left and right balls
  drawBall(0, 20);
  drawBall(1, 20);
  // calculate current interpolation
  float ip = (frameCount % 500)/500.;
  // reset colors if interpolation is 0
  if (ip == 0) {
    left.z = color(random(0, 160), 255, 255);
    right.z = color(random(120, 255), 255, 255);
  }
  // draw big middle ball
  right.y = getBallYPosition(frameCount - 1000 * ip);
  drawBall(ip, 20);
}

float getBallYPosition(float time) {
  return map(sin(time/200.), -1, 1, 20, height-20);
}

void drawBall(float ip, int size) {
  // interpolate between left and right position
  PVector position = PVector.lerp(left, right, ip);
  // interpolate between left and right color
  fill(lerpColor((color) left.z, (color) right.z, ip));
  // draw middle ball
  ellipse(position.x, position.y, size, size);
}
