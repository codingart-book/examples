// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// scaling different rectangles

// set canvas size and background color
size(1200, 200);
background(208, 170, 208);

// draw circle and rectangle in original scale
stroke(246, 173, 113);
strokeWeight(5); 
fill(113, 70, 132);
ellipse(705, 145, 355, 355);
rect(530, 20, 355, 235, 130);

// draw first scaled rectangle
scale(1.3, 1.4); 
fill(113, 70, 132, 150);
rect(530, 20, 355, 175, 230);

// draw second scaled rectangle
scale(0.6);
fill(113, 70, 132, 60);
stroke(246, 173, 113, 80);
rect(530, 20, 355, 175, 230);
