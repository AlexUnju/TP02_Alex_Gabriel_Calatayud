private Tablero tablero;
private Dado dado;
PImage[] imagenes;
int imagen = 0;


public void setup(){
  size(600,400);
  tablero = new Tablero();
  tablero.Tablero(new PVector(50,50));
  dado = new Dado();
  imagenes = new PImage[6];
  int img = 0;
  do {
    // Carga la imagen correspondiente en el arreglo imagenes
    imagenes[img] = loadImage("cara" + img + ".png");
    img++;
   } while (img < imagenes.length);
}

public void draw(){
  background(0);
  tablero.display();
  imageMode(CENTER);
  image(imagenes[dado.getImagen()], width/2, height/2,200,200);
}
