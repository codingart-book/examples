// Coding Art Book
// Mathias Funk + Yu Zhang, 2023

// testing blurred shapes for MOUNTROTHKO example case

PGraphics blur1;
PGraphics blur2;
PGraphics blur3;
PGraphics blur4;

int yOffset = 0;

void setup() {
  size(800, 800, P3D);
  background(11, 0, 191);

  blur1 = createGraphics(5, 800);
  blur1.beginDraw();
  blur1.endDraw();

  blur2 = createGraphics(500, 800);
  blur2.beginDraw();
  blur2.fill(0, 0, 255);
  blur2.rect(mouseX, 0, 30, blur1.height);
  blur2.filter(BLUR, 20);
  blur2.endDraw();

  blur3 = createGraphics(5, 800);
  blur3.beginDraw();
  blur3.endDraw();

  blur4 = createGraphics(5, 800);
  blur4.beginDraw();
  blur4.endDraw();
}

void draw() {
  image(blur1, 0, 0, width, 800);
  image(blur3, 0, 300, width, 800);
  image(blur4, 0, 400, width, 800);
  image(blur2, 400, 0, 400, height);
}

void mouseMoved() {
  float y = mouseY;
    
  blur1 = createGraphics(5, 800);
  blur1.beginDraw();
  blur1.noStroke();
  blur1.background(67, 12, 12);
  blur1.fill(113, 25, 49);
  blur1.rect(0, yOffset, blur1.width, y/2.);
  blur1.filter(BLUR, map(y, 0, height, 2, 50));
  blur1.endDraw();

  // we don't modify blur2 here

  blur3 = createGraphics(5, 800);
  blur3.beginDraw();
  blur3.noStroke();
  blur3.background(73, 65, 129);
  blur3.fill(49, 126, 255);
  blur3.rect(0, yOffset, blur1.width, y/2.);
  blur3.filter(BLUR, map(y, 0, height, 2, 50));
  blur3.endDraw();

  blur4 = createGraphics(5, 800);
  blur4.beginDraw();
  blur4.noStroke();
  blur4.background(47, 46, 85);
  blur4.fill(68, 65, 93);
  blur4.rect(0, yOffset, blur1.width, y/2.);
  blur4.filter(BLUR, map(y, 0, height, 2, 50));
  blur4.endDraw();
}

void keyPressed() {
  if (key=='r') {
    saveFrame("testrendering###.png");
  }
}
