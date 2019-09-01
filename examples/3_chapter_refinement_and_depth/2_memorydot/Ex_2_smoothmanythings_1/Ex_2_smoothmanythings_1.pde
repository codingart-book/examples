// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// 3D scene with moving grass and purple ball 

// 10000 pieces of grass to render
PVector[] positions = new PVector[10000];

// memorydot for smoothly changing the wind direction
MemoryDot windDirection = new MemoryDot(100);

// wind target will be updated regularly
PVector windTarget = new PVector(random(-20, 20), random(-20, 20));

void setup() {
  size(400, 400, P3D); 
  colorMode(HSB);

  // initialize random positions for grass,
  // x, y are position, z represents grass length
  for (int i = 0; i < 10000; i++) {
    positions[i] = new PVector(random(-250, 600), random(100, 600), random(90, 100));
  }
}

void draw() {
  // update wind direction with current target
  windDirection.update(windTarget);
  // every 150 frames, reset the wind target
  if (frameCount % 150 == 0) {
    windTarget = new PVector(random(-15, 15), random(-15, 15));
  }
  // white background in HSB model
  background(255, 0, 255);
  // translate and rotate for good viewing angle
  translate(0, 0, -300);
  rotateX(radians(-15));
  // draw grass at all positions one by one
  for (int i = 0; i < positions.length; i ++) {
    PVector p = positions[i];
    // use noise for individual deviations of grass
    float bx = - 10 + noise(i/100. + frameCount/100., i/130.) * 20;
    float by = - 10 + noise(i/170. + frameCount/200., i/100.) * 20;
    // use noise also for wind strength
    float windStrength = noise(frameCount/470.) * 2;
    // set individual stroke color differently
    stroke(100, 150, 50 + noise(i/100. + frameCount/100., i/10. + frameCount/200.) * 150);
    // draw every grass blade
    line(p.x, 200, p.y, p.x + bx - windDirection.x * windStrength, 200 - p.z, p.y + by - windDirection.y * windStrength);
    // every fifth piece of grass gets a flower
    if (i % 5 == 0) {
      pushMatrix();
      translate(p.x + bx - windDirection.x * windStrength, 200 - p.z, p.y + by - windDirection.y * windStrength);
      fill(190, 255, 200, 40); 
      noStroke();
      ellipse(0, 0, 2, 2);
      popMatrix();
    }
  }
  // draw the crazy pink bouncing sphere
  noStroke(); 
  fill(200, 255, 255);
  translate(-500 + frameCount % 1000, 100 - abs(sin(frameCount/40.) * 80), -500 + frameCount % 1000);
  sphere(60);
}
