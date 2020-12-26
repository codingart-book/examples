// Coding Art Book
// Yu Zhang + Mathias Funk, 2020

// calculate pixels for given DPI and length 

// 100mm for 10cm
int sizeInMilliMeters = 100;
// 600 DPI
int desiredDPI = 600;
// output from Processing
print("Pixel length: "); 
println(round((sizeInMilliMeters * desiredDPI)/25.4));
