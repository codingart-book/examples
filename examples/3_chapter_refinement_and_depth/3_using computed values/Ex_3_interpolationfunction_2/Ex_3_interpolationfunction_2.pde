// Coding Art Book
// Yu Zhang + Mathias Funk, 2020

// interpolation between two colored balls 3 

PVector left, right;
void setup() {
  size(400, 200); 
  noStroke(); 
  colorMode(HSB);
  left = new PVector(50, 0, color(100, 255, 255));
  right = new PVector(350, 0, color(0, 255, 255));
}

void draw() {
  background(0);
  // determine how many steps we want via x mouse position 
  float steps = (int) map(mouseX, 0, width, 2, 200);
  float stepSize = (int) map(mouseY, 0, height, 100, 2);
  // move two balls vertically
  left.y = getBallYPosition(frameCount);
  right.y = getBallYPosition(frameCount - stepSize * steps);
  // draw two balls
  fill((color) left.z);
  ellipse(left.x, left.y, 20, 20);
  fill((color) right.z);
  ellipse(right.x, right.y, 20, 20);
  // calculate current interpolation
  float ip = (frameCount % 500)/500.;
  // reset colors if interpolation is 0
  if (ip == 0) {
    left.z = color(random(0, 160), 255, 255);
    right.z = color(random(120, 255), 255, 255);
  }
  // go through all intermediate steps 
  for (int i = 0; i < steps; i++) {
    right.y = getBallYPosition(frameCount - stepSize * i);
    drawBall(i/steps, 5);
  }
  // draw big middle ball
  right.y = getBallYPosition(frameCount - stepSize * steps * ip);
  drawBall(ip, 20);
}

float getBallYPosition(float time) {
  return map(sin(time/200.), -1, 1, 20, height-20);
}

void drawBall(float interpolation, int size) {
  // interpolate between left and right position
  PVector position = PVector.lerp(left, right, interpolation);
  // interpolate between left and right color
  fill(lerpColor((color) left.z, (color) right.z, interpolation));
  // draw middle ball
  ellipse(position.x, position.y, size, size);
}
