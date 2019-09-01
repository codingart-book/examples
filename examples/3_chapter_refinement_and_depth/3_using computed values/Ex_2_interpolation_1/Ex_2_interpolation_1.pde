// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// interpolation between two colored balls 1 

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
  left.y = map(sin(frameCount/100.), -1, 1, 20, height-20);
  right.y = map(cos(frameCount/200.), -1, 1, 20, height-20);
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
  // interpolate between left and right position
  PVector currentPosition = PVector.lerp(left, right, ip);
  // interpolate between left and right color
  fill(lerpColor((color) left.z, (color) right.z, ip));
  // draw middle ball
  ellipse(currentPosition.x, currentPosition.y, 20, 20);
}
