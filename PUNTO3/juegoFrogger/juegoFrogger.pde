Escenario miEscenario;

void setup() {
  size(600, 700);
  miEscenario = new Escenario(0, height-150, 0, height-400, 0, 0, width);
}

void draw() {
  background(0);
  miEscenario.dibujar();
}
