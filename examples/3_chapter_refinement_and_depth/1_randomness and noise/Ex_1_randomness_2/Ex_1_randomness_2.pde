// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// dots positioned according to Gaussian distribution

noStroke();
fill(80, 40);
// draw a lot of randomly positioned dots
for (int i = 0; i < 20000; i++) {
  // move by 50 pixels to the right, scale by factor 10
  float position = 50 + randomGaussian() * 10;
  rect(position, i % 100, 1, 1);
}
