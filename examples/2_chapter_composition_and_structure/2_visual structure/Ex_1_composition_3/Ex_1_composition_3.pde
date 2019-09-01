// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// animating 4000 particles mirrored in 6 facets with changes

// reserve memory space for 4000 particles 
Particle[] particles = new Particle[4000];

void setup() {
  size(600, 600); 
  smooth(); 
  noStroke();
  
  // loop through all 4000 particles and initialize
  for (int i = 0; i < 4000; i++) {
    particles[i] = new Particle();
  }
}

void draw() {
  // dark blue background
  background(35, 27, 107);

  // first row
  drawParticleCloud(100, 100);
  // copy cloud as image
  PImage cloud = get(0, 0, 200, 200);
  tint(255, 255, 200);
  image(cloud, 200, 0, 200, 200);
  tint(255, 255, 160);
  image(cloud, 400, 0, 200, 200);
  // second row
  tint(200, 160, 160);
  image(cloud, 0, 200, 200, 200);
  tint(200, 120, 80);
  image(cloud, 200, 200, 200, 200);
  tint(200, 80, 40);
  image(cloud, 400, 200, 200, 200);
}

// function to draw the particle cloud
// with location parameters
void drawParticleCloud(int x, int y) {
  // save canvas before translate
  pushMatrix();
  // translate to center of particle cloud
  translate(x, y);
  // loop through all particles
  for (Particle p : particles) {
    // change position and draw particle
    p.move(abs(width/2-mouseX));
    p.show();
  }
  // restore canvas
  popMatrix();
}

// create a new class for our particle
class Particle {
  float x, y, size, directionX, directionY;

  // initialize (called 'constructor')
  public Particle() {
    this.x = 0;
    this.y = 0;
    this.size = random(0.5, 4);
    this.directionX = random(-1, 1);
    this.directionY = random(-1, 1);
  }
  
  // function to move the particle position in direction
  // move function with additional parameter 'radius'
  // that replaces the number 250 below
  public void move(int radius) {
    // calculate the particle's distance from the center
    PVector position = new PVector(x, y);
    if (position.dist(new PVector(0, 0)) > radius) {
      // create new random target position
      PVector target = new PVector(random(-250, 250), random(-250, 250));
      // calculate the direction vector between current and target position
      PVector direction = PVector.sub(target, position);
      // divide direction by 600 to make the steps small
      direction.div(600);
      // set the new direction for the particle
      directionX = direction.x;
      directionY = direction.y;
    }
    // this is as before
    this.x += directionX;
    this.y += directionY;
  }

  // draw the particle on the Processing canvas
  public void show() {
    // set individual particle color
    fill(238, 120, 138, this.size * 30);
    // draw particle shape
    ellipse(this.x, this.y, this.size, this.size);
  }
}
