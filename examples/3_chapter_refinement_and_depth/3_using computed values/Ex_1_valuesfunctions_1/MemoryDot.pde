// Coding Art Book
// Yu Zhang + Mathias Funk, 2020

// MemoryDot class
class MemoryDot extends PVector {
  PVector[] internal; float x, y, energy;
  public MemoryDot(int size) {
    internal = new PVector[size]; x = 0; y = 0;
  }
  public void update(float x, float y) {
    update(new PVector(x, y));
  }
  public void update(PVector newValue) {
    float x = 0; float y = 0; energy = 0;
    for (int i = internal.length-1; i > 0; i--) {
      if (internal[i] != null) {
        x += internal[i].x/float(internal.length);
        y += internal[i].y/float(internal.length);
      }
      if (internal[i] != null && internal[i-1] != null) {
        energy += internal[i-1].dist(internal[i])/float(internal.length);
      }
      internal[i] = internal[i-1];
    }
    internal[0] = newValue;
    if (internal[0] != null) {
      x += internal[0].x/float(internal.length);
      y += internal[0].y/float(internal.length);
    }
    this.x = x; this.y = y;
  }
}
