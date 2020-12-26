// Coding Art Book
// Yu Zhang + Mathias Funk, 2020

// drawing pressed characters in black/white on screen 

// Inter UI font from https://rsms.me/inter/
// (see license in /data folder)

PFont f;
void setup() {
  size(400, 400);
  // load a specific font to print text
  f = loadFont("InterUI-ExtraBold-250.vlw");
  background(0);
}

void draw() {
}

void keyPressed() {
  // draw character
  background(0); 
  fill(255);
  // set text rendering options
  textFont(f, 250);
  textSize(250);
  // measure character width
  float charWidth = textWidth(key);
  // draw character centered
  text(key, (width - charWidth) / 2, 300);
}
