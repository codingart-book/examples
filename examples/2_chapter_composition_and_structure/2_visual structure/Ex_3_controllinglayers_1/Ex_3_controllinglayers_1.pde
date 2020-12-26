// Coding Art Book
// Yu Zhang + Mathias Funk, 2020

// animating 4000 particles in layers of depth controlled by mouse

// reserve memory space for 4000 particles 
Particle[] particles = new Particle[4000];

void setup() {
  size(600, 400, P3D);
  smooth();
  noStroke();

  // loop through all 4000 particles
  for (int i = 0; i < 4000; i++) {
    // initialize particle 
    particles[i] = new Particle();
  }
}

void draw() {
  // dark blue background, no stroke
  background(35, 27, 107); 
  noStroke();
  // move canvas into position
  translate(width/2, height/2, -400);
  rotateY(radians(frameCount/1.));
  // draw a single particle cloud
  for (Particle p : particles) {
    // change position and draw particle
    p.move(250);
    // check the particle's z-property for threshold
    // set by mouse horizontal position
    if (map(p.size, 0.5, 2, 0, width) < mouseX) {
      p.show();
    }
  }
}

class Particle {
  float x, y, size, directionX, directionY;

  public Particle() {
    this.x = 0;
    this.y = 0;
    this.size = int(random(5, 20)) / 10.;
    this.directionX = random(-1, 1);
    this.directionY = random(-1, 1);
  }

  public void move(int radius) {
    PVector position = new PVector(x, y);
    if (position.dist(new PVector(0, 0)) > radius) {
      PVector target = new PVector(random(-250, 250), random(-250, 250));
      PVector direction = PVector.sub(target, position).div(600);
      directionX = direction.x;
      directionY = direction.y;
    }

    this.x += directionX;
    this.y += directionY;
  }

  public void show() {
    // adjust individual color
    fill(238, 120, 138, this.size * 100);
    // save canvas    
    pushMatrix();
    // translate
    translate(0, 0, this.size * 200);
    // draw particle shape (with core and halo)
    ellipse(this.x, this.y, this.size, this.size);
    fill(238, 120, 138, this.size * 20);
    ellipse(this.x, this.y, this.size * 20, this.size * 20);
    // restore canvas
    popMatrix();
  }
}
