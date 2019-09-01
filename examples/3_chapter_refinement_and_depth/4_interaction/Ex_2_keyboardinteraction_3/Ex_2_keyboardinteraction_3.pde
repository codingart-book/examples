// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// drawing pressed characters in black/white on screen
// with randomly placed dots inside of character shape

// Inter UI font from https://rsms.me/inter/
// (see license in /data folder)

PFont f;
PGraphics textCanvas;
void setup() {
  size(400, 400);
  textCanvas = createGraphics(400, 400);
  f = loadFont("InterUI-ExtraBold-250.vlw");
  background(0);
}

void draw() {
}

void keyPressed() {
  // draw character on off-screen canvas
  textCanvas.beginDraw();
  textCanvas.textFont(f, 250);
  textCanvas.background(0);
  textCanvas.fill(255);
  textCanvas.textSize(250);
  // measure character width
  float charWidth = textCanvas.textWidth(key);
  // draw character centered
  textCanvas.text(key, (width-charWidth)/2, 300);
  textCanvas.endDraw();
  // draw new character
  background(0); 
  noStroke();
  // go through 2000 iterations of the recursive
  // drawing of dots and thin lines
  for (int i = 0; i < 2000; i++) {
    drawDot(random(0, width), random(0, height), 10);
  }
}

void drawDot(float x, float y, int depth) {
  // stop recursion if depth is 0
  if (depth == 0) {
    return;
  }
  // look up the brightness of current position
  // in the textcanvas (where we drew the letter)
  if (brightness(textCanvas.get((int)x, (int)y)) > 0) {
    // if inside letter, print a solid dot
    fill(255, map(depth, 0, 10, 80, 180));
    ellipse(x, y, depth/2, depth/2);
  }
  // find next position
  float nextX = x + random(-20, 20);
  float nextY = y + random(-20, 20);
  // go into recursion on next level
  drawDot(nextX, nextY, depth - 1);
}
