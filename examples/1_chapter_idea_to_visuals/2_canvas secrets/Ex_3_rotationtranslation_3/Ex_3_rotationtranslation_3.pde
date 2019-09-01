// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// rectangle rotation 3

// setup canvas
size(200, 200); 
background(0);
rectMode(CENTER);

// draw white 'canvas'
fill(255);
rect(width/2, height/2, 200, 200);

// translate to center point
translate(width/2, height/2);

// rotate by 10 degrees
rotate(radians(10));

// draw black rectangle using the new (0, 0)
fill(0);
rect(0, 0, 40, 40);
