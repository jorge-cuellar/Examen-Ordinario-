PFont f;
int PoblacionMaxima;
float rangoMutacion;
String MiFrase;
Poblacion Poblacion;
 
void setup() {
  MiFrase = "1442635/1766527";
  PoblacionMaxima= 100;
  rangoMutacion = 0.001;
   Poblacion = new Poblacion(MiFrase, rangoMutacion, PoblacionMaxima);
}
 
void draw() {

  Poblacion.naturalSelection();

  Poblacion.generate();

  Poblacion.calcFitness();
  Informacion();

  if (Poblacion.finished()) {
    noLoop();
  }
}
 
void Informacion() {
  String respuesta = Poblacion.getBest();
   println("Equipo ", respuesta);
}
