// Coding Art Book
// Yu Zhang + Mathias Funk, 2020

// animating 4000 particles in round shape

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
  // always draw from center of canvas
  translate(width/2, height/2);
  // loop through all particles
  for (Particle p : particles) {
    // change position and draw particle
    p.move();
    p.show();
  }
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
  public void move() {
    // calculate the particle's distance from the center
    PVector position = new PVector(x, y);
    if (position.dist(new PVector(0, 0)) > 250) {
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
