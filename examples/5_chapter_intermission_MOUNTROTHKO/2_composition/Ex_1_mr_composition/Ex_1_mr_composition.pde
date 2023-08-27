// Coding Art Book
// Mathias Funk + Yu Zhang, 2023

// MOUNTROTHKO composition example

PGraphics blur1;
PGraphics blur2;
PGraphics blur3;
PGraphics blur4a;
PGraphics blur4b;
PGraphics blur4c;
PGraphics light;
int yOffset = 0;

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

  blur4a = createGraphics(5, 1000);
  blur4a.beginDraw();
  blur4a.endDraw();

  blur4b = createGraphics(5, 1000);
  blur4b.beginDraw();
  blur4b.endDraw();

  blur4c = createGraphics(5, 1000);
  blur4c.beginDraw();
  blur4c.endDraw();

  light = createGraphics(200, 200);
  light.beginDraw();
  light.smooth();
  light.noFill();
  light.stroke(255);
  light.strokeWeight(8);
  light.arc(100, 100, 50, 50, HALF_PI, PI);
  light.filter(BLUR, 5);
  light.endDraw();
}

void draw() {
  background(255, 8, 8);
  noStroke();

  pushMatrix();
  translate(300, 0);
  rotate(radians(45));
  scale(2);
  image(blur4a, 100, 0, width-400, 3000-400);
  popMatrix();

  pushMatrix();
  translate(300, 0);
  rotate(radians(45));
  image(blur4b, 0, 160, 280, 1300);
  popMatrix();

  pushMatrix();
  translate(width-300, 0);
  rotate(radians(45));
  image(blur4c, 0, 0, 3000, 3000-400);
  popMatrix();

  image(blur1, 0, 0, width, 1000);
  image(blur2, 0, 0, width, 1000);
  image(blur3, 0, 0, width, 1000);
}

void mouseMoved() {
  float y = mouseX;

  blur4a = createGraphics(5, 1000);
  blur4a.beginDraw();
  blur4a.smooth();
  blur4a.noStroke();
  blur4a.fill(3, 1, 72, 255);
  blur4a.rect(0, yOffset, blur1.width, y/2.);
  blur4a.filter(BLUR, map(y, width, 0, 2, 50));
  blur4a.endDraw();

  blur4b = createGraphics(5, 1000);
  blur4b.beginDraw();
  blur4b.smooth();
  blur4b.noStroke();
  blur4b.fill(3, 1, 72, 180);
  blur4b.scale(0.5);
  blur4b.rect(0, yOffset, blur1.width, y/3.);
  blur4b.filter(BLUR, map(y, width, 5, 2, 70));
  blur4b.endDraw();

  blur4c = createGraphics(5, 1000);
  blur4c.beginDraw();
  blur4c.smooth();
  blur4c.noStroke();
  blur4c.fill(3, 1, 72, 180);
  blur4c.triangle(100, 0, 0, yOffset, blur1.width, y/2.);
  blur4c.filter(BLUR, map(y, width, 0, 2, 50));
  blur4c.endDraw();

  y = mouseY;

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
