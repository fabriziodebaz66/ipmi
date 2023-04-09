//Debaz Fabrizio
//tp0 comision 1

size(800, 400);
noStroke();
background(255, 128, 49);
fill(120);
stroke(130);
strokeWeight(15);
line(700, 198, 745, 180);
noStroke();
rect(675, 196, 200, 100);
fill(245, 180, 105);
circle(600, 162, 45);
fill(120);
square(545, 204, 55);
fill(110);
triangle(615, 220, 570, 175, 540, 210);
fill(130);
triangle(550, 215, 575, 200, 640, 240);
fill(140);
triangle(650, 175, 550, 250, 750, 250);
quad(675, 200, 700, 185, 705, 195, 710, 195);
quad(800, 200, 750, 175, 715, 185, 800, 250);
rect(400,210, 100, 50);
triangle(410, 200, 480, 225, 400, 225);
fill(105);
triangle(400, 250, 450, 200, 490, 215);
fill(150);
triangle(400, 250, 505, 180, 600, 250);

fill(110);
ellipse(675, 300, 275, 125);
fill(100);
ellipse(540, 300, 200, 110);
fill(125);
ellipse(400, 300, 300, 110);
fill(70, 110, 10);
rect(400, 280, 400, 400);
fill(110, 200, 30);
triangle(400, 400, 575, 325, 850, 300);
ellipse(800, 400, 475, 120);
fill(100);
triangle(640, 275, 400, 275, 400, 325);

PImage paisaje;
paisaje = loadImage("paisaje400.jpg");
image(paisaje, 0, 0);
