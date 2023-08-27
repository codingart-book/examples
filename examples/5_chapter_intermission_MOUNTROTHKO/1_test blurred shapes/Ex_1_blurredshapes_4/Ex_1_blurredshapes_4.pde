// Coding Art Book
// Mathias Funk + Yu Zhang, 2023

// testing blurred shapes for MOUNTROTHKO example case

PGraphics blur1;
PGraphics blur2;
PGraphics blur3;
PGraphics blur4;
int yOffset=0;

void setup() {
  size(1000, 1000);

  blur1 = createGraphics(5, 1000);
  blur1.beginDraw();
  blur1.endDraw();

  blur2 = createGraphics(5, 1000);
  blur2.beginDraw();
  blur2.endDraw();

  blur3 = createGraphics(5, 1000);
  blur3.beginDraw();
  blur3.endDraw();

  blur4 = createGraphics(5, 1000);
  blur4.beginDraw();
  blur4.endDraw();
}

void draw() {
  background(255, 8, 8);
  noStroke();

  image(blur4, 100, 100, width-400, 1000-400);
  image(blur1, 0, 0, width, 1000);
  image(blur2, 0, 0, width, 1000);
  image(blur3, 0, 0, width, 1000);
}

void mouseMoved() {
  float y = mouseY;

  blur1 = createGraphics(5, 1000);
  blur1.beginDraw();
  blur1.smooth();
  blur1.noStroke();
  blur1.fill(149, 51, 122, 200);
  blur1.rect(0, yOffset, blur1.width, y/2.);
  blur1.filter(BLUR, map(y, 0, height, 2, 50));
  blur1.endDraw();

  y = 200 + sin(frameCount/100.)*200;

  blur2 = createGraphics(5, 1000);
  blur2.beginDraw();
  blur2.smooth();
  blur2.noStroke();
  blur2.fill(255, 180, 0, 160);
  blur2.rect(0, yOffset, blur1.width, y/2.);
  blur2.filter(BLUR, map(y, 0, height, 2, 50));
  blur2.endDraw();

  y = mouseX;

  blur4 = createGraphics(5, 1000);
  blur4.beginDraw();
  blur4.smooth();
  blur4.noStroke();
  blur4.fill(22, 15, 255, 300);
  blur4.rect(0, yOffset, blur1.width, y/2.);
  blur4.filter(BLUR, map(y, width, 0, 2, 50));
  blur4.endDraw();

  y = mouseX;

  blur3 = createGraphics(5, 1000);
  blur3.beginDraw();
  blur3.smooth();
  blur3.noStroke();
  blur3.fill(3, 0, 95, 160);
  blur3.rect(0, yOffset, blur1.width, y/2.);
  blur3.filter(BLUR, map(y, 0, height, 2, 50));
  blur3.endDraw();
}

void keyPressed() {
  if (key=='r') {
    saveFrame("testrendering###.png");
  }
}
