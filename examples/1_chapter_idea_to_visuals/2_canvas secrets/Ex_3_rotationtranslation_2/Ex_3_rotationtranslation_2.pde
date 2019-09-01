// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// rectangle rotation 2

// setup canvas
size(200, 200); 
background(0);
rectMode(CENTER);

// rotate canvas by 10 degrees
rotate(radians(10));

// draw white 'canvas'
fill(255);
rect(width/2, height/2, 200, 200);

// draw black rectangle on canvas
fill(0);
rect(width/2, height/2, 40, 40);
