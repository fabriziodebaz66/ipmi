 //Debaz Fabrizio comision 4

PImage Imagen1;
PImage Imagen2;
PImage Imagen3;
PImage Imagen4;

boolean mostrarImagen1;
boolean mostrarImagen2;
boolean mostrarImagen3;
boolean mostrarImagen4;

float posx;
float posy;

float velocidad;

float textcolor;

void setup(){
  size(640, 480 );
  Imagen1 = loadImage("cowboy1.jpg");
  Imagen2 = loadImage("cowboy2.jpg");
  Imagen3 = loadImage("cowboy3.jpg");
  Imagen4 = loadImage("cowboy4.png");
  
  mostrarImagen1 = true;
  mostrarImagen2 = false;
  mostrarImagen3 = false;
  mostrarImagen4 = false;
  
  posx = width;
  posy = height;
  velocidad = -1;
  textcolor = 255;

  textSize(24);

}


void draw(){
  textSize(24);
  mostrarImagen1 = true;
  if (mostrarImagen1 == true){
  image(Imagen1, 0, 0, width, height);
  fill(textcolor);
  text("Cowboy bebop es un anime hecho en 1998, cuenta con un total de 26 episodios.", posx, posy/4);
  
  posx += velocidad;
  
  if (posx < -textWidth("Cowboy bebop es un anime hecho en 1998, cuenta con un total de 26 episodios.")) {
      posx = width;
      mostrarImagen2 = true;
      mostrarImagen1 = false;
  }
  if(mostrarImagen2 ==true){
    image(Imagen2, 0, 0, width, height);
    fill(textcolor);
    text(" Spike Spiegel es un cazarrecompenzas que viaja por el espacio.", 0, posy);
    posy += velocidad;
  }
  if(posy <- 0){
    posy = height;
    mostrarImagen2= false;
    mostrarImagen3= true;
  }
  if(mostrarImagen3 ==true){
    image(Imagen3, 0, 0, width, height);
    fill(255, textcolor, textcolor);
    text("la serie trata acerca de sus aventuras, desventuras y tragedias.", 0, height/2);
  textcolor += -2;
  }
  if(textcolor <- 0){
    textcolor = 255;
    mostrarImagen3= false;
    mostrarImagen4= true;
  }
  if(mostrarImagen4 == true){
  image(Imagen4, 0, 0, width, height);
  textSize(40);
  text("Reiniciar", 225, 480);
  }
  }
}
void mouseClicked() {
  if (mostrarImagen4 == true && mouseX >= 225 && mouseX <= 375 && mouseY >= 400 && mouseY <= 480) {
    reiniciarPrograma();
  }
}

void reiniciarPrograma() {
  mostrarImagen1 = true;
  mostrarImagen2 = false;
  mostrarImagen3 = false;
  mostrarImagen4 = false;
  posx = width;

}
