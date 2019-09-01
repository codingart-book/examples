// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// positioning rectangle with arrow keys 

PVector pos;
void setup() {
  size(400, 400);
  noStroke(); 
  rectMode(CENTER);
  // start position: middle center point of canvas
  pos = new PVector(width/2, height/2);
}

void draw() {
  background(0);
  fill(200, 200, 255);
  rect(pos.x, pos.y, 40, 40);
}

void keyPressed() {
  // check if key is special
  if (key == CODED) {
    // for special keys, check key code
    if (keyCode == UP) { 
      pos.y--;
    } else if (keyCode == DOWN) { 
      pos.y++;
    } else if (keyCode == LEFT) { 
      pos.x--;
    } else if (keyCode == RIGHT) { 
      pos.x++;
    }
  } else {
    // all other keys --> reset position
    pos.set(width/2, height/2);
  }
}
