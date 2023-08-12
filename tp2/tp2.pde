PImage img;

void setup() {
  size(800, 400);
  img = loadImage("imagen.jpg");
}

void draw() {
  background(0);
  strokeWeight(10);

  // diagonales fondo
  strokeWeight(10);
  for (int y = 0; y < height; y += 10) {
    if (mouseX >= width / 2 - y && mouseX <= width - y &&
        mouseY >= y && mouseY <= width / 2) {
      if (y % 20 == 0) {
        stroke(255);
      } else {
        stroke(0);
      }
    } else {
      if (y % 20 == 0) {
        stroke(0);
      } else {
        stroke(255);
      }
    }

    line(width / 2, y, width - y, width / 2);
    line(width / 2, -y, width + y, width / 2);
  }

  // cuadrado
  strokeWeight(14);
  float cuadrado1 = 456;
  boolean dibujarNegro = true;

  for (int posCuadrado = (int) cuadrado1; posCuadrado < width && posCuadrado <= 740; posCuadrado += 12) {
    if (mouseX >= posCuadrado && mouseX <= posCuadrado + 12 &&
        mouseY >= 54 && mouseY <= 340) {
      if (dibujarNegro) {
        stroke(255);
      } else {
        stroke(0);
      }
    } else {
      if (dibujarNegro) {
        stroke(0);
      } else {
        stroke(255);
      }
    }
    line(posCuadrado, 54, posCuadrado, 340);
    dibujarNegro = !dibujarNegro;
  }

  // Diagonales centro
  strokeWeight(14);
  boolean lol = true;

  for (int y = 128; y <= 256; y += 12) {
    if (mouseX >= 528 && mouseX <= 528 + (y - 128) &&
        mouseY >= y && mouseY <= 256) {
      if ((y - 128) % 24 == 0) {
        stroke(255);
      } else {
        stroke(0);
      }
    } else {
      if ((y - 128) % 24 == 0) {
        stroke(0);
      } else {
        stroke(255);
      }
    }
    line(528, y, 528 + (y - 128), 128);
    line(656, y, 528 + (y - 128), 256);
    lol = !lol;
  }

  image(img, 0, 0);
  /*
  int mouseXPos = mouseX;
  int mouseYPos = mouseY;
  fill(255, 0, 0);
  text("Posición del mouse: (" + mouseXPos + ", " + mouseYPos + ")", 20, 20);*/
}
