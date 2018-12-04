int [] x = {4, 12, 9, 23, 6, 91, 2, 54, 37, 6, 1, 5, 78, 87, 25};
int [] newX;
int posnewX;
Node root; //nodo
Tree arbol;

void setup() {
  posnewX = 0;
  newX = new int [x.length];
  root = new Node(x[0]); //Nodo
  arbol = new Tree(root);
  println(x);
  println("-----------");

  for (int i = 1; i < x.length; i++) {  //arbol
    arbol.createNode(arbol.Trunk[0], x[i]);
  }
  arbol.acomodar(arbol.Trunk[0]); //Numeros (equis)
  println(newX);
}

void draw() {
}
