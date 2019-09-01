// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// curve tangent in red and blue 

void setup() {
  size(400, 400); 
  noFill();
}

void draw() {
  background(0); 
  stroke(255, 0, 0);

  // draw the curve from point 100, 100 to 300, 300
  // the first and last two parameters are control points
  // that give the curve some 'curve'
  curve(200, -400, 100, 100, 300, 300, 200, 800);
  float t = (frameCount % 200) / 200.;
  float x = curvePoint(200, 100, 300, 200, t);
  float y = curvePoint(-400, 100, 300, 800, t);
  float tx = curveTangent(200, 100, 300, 200, t) / 5.;
  float ty = curveTangent(-400, 100, 300, 800, t) / 5.;
  // set stroke depending on the angle (tx/ty)
  stroke(atan2(tx, ty) * 255, 0, 255);
  // draw our line
  line(x - tx, y - ty, x + tx, y + ty);
}
