// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// animating 4000 particles

// reserve memory space for 4000 particles 
PVector[] particle = new PVector[4000];
// reserve memory space for 400 particle directions
PVector[] direction = new PVector[4000]; 

void setup() {
  size(600, 600); 
  smooth(); 
  noStroke();

  // loop through all 4000 particles
  for (int i = 0; i < 4000; i++) {
    // initialize particle at center position with a third component
    // that we use for size and color of the particle 
    particle[i] = new PVector(0, 0, random(0.5, 4));
    // initialize random particle direction 
    direction[i] = new PVector(random(-1, 1), random(-1, 1));
  }
}

void draw() {
  // dark blue background
  background(35, 27, 107);
  // always draw from center of canvas
  translate(width/2, height/2);

  // loop through all particles
  for (int i = 0; i < 4000; i++) {
    // change position
    PVector p = particle[i].add(direction[i]);
    // adjust individual color
    fill(238, 120, 138, p.z * 30);
    // draw particle shape
    ellipse(p.x, p.y, p.z, p.z);
  }
}
