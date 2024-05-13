class Escenario {
  PVector posicion1;
  PVector posicion2;
  PVector posicionCesped; 
  PImage imagenSuelo;
  PImage imagenCesped;
  String nombreImagenSuelo = "suelo.png";
  String nombreImagenCesped = "cesped.png";

  // Constructor
  Escenario(float x1, float y1, float x2, float y2, float xCesped, float yCesped, int width) {
    posicion1 = new PVector(x1, y1);
    posicion2 = new PVector(x2, y2);
    posicionCesped = new PVector(xCesped, yCesped);
    cargarImagenes();
  }
  
  // Método para cargar las imágenes del suelo y el césped
  void cargarImagenes() {
    imagenSuelo = loadImage(nombreImagenSuelo);
    imagenSuelo.resize(50, 0);
    imagenCesped = loadImage(nombreImagenCesped);
    imagenCesped.resize(150, 0); 
  }
  
  // Método para dibujar el escenario con las imágenes
  void dibujar() {
    float x1 = posicion1.x;
    while (x1 < width) {
      image(imagenSuelo, x1, posicion1.y);
      x1 += imagenSuelo.width;
    }
    
    float x2 = posicion2.x;
    while (x2 < width) {
      image(imagenSuelo, x2, posicion2.y);
      x2 += imagenSuelo.width;
    }
    
    float xCesped = posicionCesped.x;
    while (xCesped < width) {
      image(imagenCesped, xCesped, posicionCesped.y);
      xCesped += imagenCesped.width;
    }
  }
}
