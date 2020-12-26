// Coding Art Book
// Yu Zhang + Mathias Funk, 2020

// colors and bars (made for big screen size)

// set canvas size, white background
size(1920, 1080);
background(255);
// set 30 pixel line weight
strokeWeight(30);

color blue = color(9, 37, 87);
color red = color(135, 3, 17);
color yellow = color(211, 179, 15);

// set colors and draw line
stroke (blue);
line (0, 980, width, 980);
stroke (red);
line (0, 10, width, 10);
stroke (blue);
line (0, 90, width, 90);
stroke (yellow);
line (100, 0, 100, height);
stroke (yellow);
line (0, 650, width, 650);
