// Coding Art Book
// Yu Zhang + Mathias Funk, 2020

// scaling and reset with push and pop

// scale canvas once and draw rectangle
scale(0.8);
rect(0, 0, 20, 20);

// save point
pushMatrix();
// vertical stretch
scale(0.6, 1.2);
ellipse(10, 10, 20, 20);
// restore canvas
popMatrix();

// draw rectangle in normal scaling as above
rect(30, 0, 20, 20);

// save point
pushMatrix();
// horizontal stretch
scale(1.2, 0.6);
ellipse(40, 10, 20, 20);
// restore canvas
popMatrix();
