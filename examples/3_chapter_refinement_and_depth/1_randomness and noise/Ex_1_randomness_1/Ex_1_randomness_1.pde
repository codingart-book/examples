// Coding Art Book
// Yu Zhang + Mathias Funk, 2019

// random fill color

randomSeed(0);
noStroke();
for (int i = 0; i < 50; i += 5) {
  fill(random(0, 255));
  rect(i, 10, 4, 4);
}
