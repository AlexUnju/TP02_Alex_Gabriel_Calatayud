private Tablero tablero;

public void setup(){
  size(600,400);
  tablero = new Tablero();
  tablero.Tablero(new PVector(50,50));

}

public void draw(){
  background(0);
  tablero.display();
  
}
