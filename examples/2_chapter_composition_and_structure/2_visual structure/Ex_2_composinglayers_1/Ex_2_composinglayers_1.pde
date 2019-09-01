// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// animating 4000 particles in rotating 3D facets

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
  // dark blue background
  background(35, 27, 107);
  noStroke();
  // first row
  drawParticleCloud(100, 100);
  // get cloud as image
  PImage cloud = get(0, 0, 200, 200);
  // erase background again
  background(25, 17, 87);
  // move to center of cenvas
  translate(width/2, height/2, 100 - frameCount/100.);
  // introduce slow rotation
  rotateX(frameCount/300.);
  // draw 100 textured squares in a loop
  for (int i = 0; i < 100; i++) {
    // rotate on the x axis
    rotateY(radians(sin(frameCount/300.)) * 8);
    // draw square
    beginShape();
    // gradually scale down size
    scale(0.95, 0.95, 0.95);
    // set cloud as texture
    texture(cloud);
    // almost invisible stroke
    stroke(255, 20);
    vertex(-100, -100, i * -100, 0, 0);
    vertex(100, -100, i * -100, 200, 0);
    vertex(100, 100, i * -100, 200, 200);
    vertex(-100, 100, i * -100, 0, 200);
    endShape(CLOSE);
  }
}

void drawParticleCloud(int x, int y) {
  pushMatrix();
  // always draw from center of canvas
  translate(x, y);
  // loop through all particles
  for (Particle p : particles) {
    // change position and draw particle
    p.move(abs(width/2-mouseX));
    p.show();
  }
  popMatrix();
}

class Particle {
  float x, y, size, directionX, directionY;

  public Particle() {
    this.x = 0;
    this.y = 0;
    this.size = random(0.5, 4);
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
    fill(238, 120, 138, this.size * 30);
    // draw particle shape
    ellipse(this.x, this.y, this.size, this.size);
  }
}
