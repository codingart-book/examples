// Coding Art Book
// Yu Zhang + Mathias Funk, 2020

// textured spheres with translations

// set canvas size and ask for 3D canvas
size(640, 640, P3D);

// white background, no outline for shapes
background(255);
noStroke();

// load the texture image
// from https://pixabay.com/photos/earth-blue-planet-globe-planet-11015/
PImage img = loadImage("earth.jpg");

// create a shape and set the image as texture
PShape ellipse = createShape(SPHERE, 100); 
ellipse.setTexture(img);

// from the left to right, draw the first 3D ellipse
translate(width/5, height/5, -150); 
shape(ellipse);
// from the left to right, draw the second 3D ellipse
translate(width/5, height/5, 150); 
shape(ellipse);
// from the left to right, draw the third 3D ellipse
translate(width/5, height/5, 150); 
shape(ellipse);
