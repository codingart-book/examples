// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// dots positioned according to Gaussian distribution
// mapped position

noStroke();
fill(80, 40);
// draw a lot of randomly positioned dots
for (int i = 0; i < 20000; i++) {
  // map from range [-5, 5] to range [0, width]
  float position = map(randomGaussian(), -5, 5, 0, width);
  rect(position, i % 100, 1, 1);
}
