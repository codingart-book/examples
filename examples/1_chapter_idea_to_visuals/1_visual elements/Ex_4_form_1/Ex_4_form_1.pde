// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// simple sphere with lighting

size(640, 640, P3D);
background(208, 170, 208);
noStroke();
fill(113, 70, 132);

// use a directional light in 3D space:
// first three values give light position,
// the rest is about the direction of the light
directionalLight(251, 232, 255, 1, 0, -1);

// move camera
translate(width/2, height/2, -30);

// draw sphere with 180 pixel diameter
sphere(180); 
