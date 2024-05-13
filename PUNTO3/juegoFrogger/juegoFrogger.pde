private Escenario escenario;
private Rana rana;

void setup() {
  size(600, 700);
  //Escenario
  PVector pos1 = new PVector(0, height - 150);
  PVector pos2 = new PVector(0, height - 400);
  PVector posCesped = new PVector(0, 0);
  escenario = new Escenario(pos1, pos2, posCesped, width);
  escenario.setPosicion1(new PVector(0,height-400 ));
  escenario.setPosicion2(new PVector(0,height-130));
  escenario.setPosicionCesped(new PVector(0, 0));
  
  //Rana
  rana = new Rana();
  rana.setPosicion(new PVector(width/2 - 25, height - 80));
  rana.setVelocidad(new PVector(0, 0));  
}
  
void draw() {
  background(0);  
  escenario.dibujar();
  rana.display();
  rana.mover();
}
