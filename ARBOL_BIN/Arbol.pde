class Tree {

  //Atributos
  Node [] Trunk; //Array nodos
  Tree(Node n) {
    Trunk = new Node[1];
    Trunk[0] = n;
  }

  String checkSide(Node n, int val) {
    String res;
    if (val >= int(n.value)) {
      res = "left";
    } else {
      res = "right";
    }
    return res;
  }


  boolean checkEmpty(Node n, String side) {
    boolean empty = false;
    if (side == "left") {
      if (n.left == null) {
        empty = true;
      }
    }

    if (side == "right") {
      if (n.right == null) {
        empty = true;
      }
    }
    return empty;
  }



  void addLeftChild(Node n) {
    n.left = str(Trunk.length);
  }



  void addRightChild(Node n) {
    n.right = str(Trunk.length);
  }



  void createNode(Node n, int val) {
    String lado;
    lado = checkSide(n, val);
    if (lado == "left") {
      boolean vacio;
      vacio = checkEmpty(n, lado);
      if (vacio == true) {
        addLeftChild(n);
        Node nuevo;
        nuevo = new Node(Trunk.length, int(n.id), val);
        Trunk = (Node []) append(Trunk, nuevo);
      } else {
        createNode(Trunk[int(n.left)], val);
      }
    }



    if (lado == "right") {
      boolean vacio;
      vacio = checkEmpty(n, lado);
      if (vacio == true) {
        addRightChild(n);
        Node nuevo;
        nuevo = new Node(Trunk.length, int(n.id), val);
        Trunk = (Node []) append(Trunk, nuevo);
      } else {
        createNode(Trunk[int(n.right)], val);
      }
    }
  }

  void printData(int i) {
    println(arbol.Trunk[i].id);
    println(arbol.Trunk[i].parent);
    println(arbol.Trunk[i].value);
    println(arbol.Trunk[i].left);
    println(arbol.Trunk[i].right);
    println(arbol.Trunk[i].order);
    println(arbol.Trunk[i].orderLeft);
    println(arbol.Trunk[i].orderRight);
  }

  void acomodar(Node n) {
    if (n.left != null) { //Izquierda
      if (n.orderLeft == true) {                       
        if (n.order == false) {  //revisarOrder
          Ordenar(n);
        }
      } else {
        irIzq(n);
      }
    } else {
      n.orderLeft=true;
    }
    if (n.order==false) {  
      Ordenar(n);
    }
    if (n.right == null) { //derecha
      n.orderRight=true;
      irArriba(n);
    } 
    if (n.orderRight==false) { //revisarOrder
      irDch(n);
    }
    if (n.parent!=null) { 
      irArriba(n);
    }
  }   //FIN

  void irIzq(Node n) {
    n.orderLeft=true;
    acomodar(Trunk[int(n.left)]);
  }

  void irDch(Node n) {
    n.orderRight=true;
    acomodar(Trunk[int(n.right)]);
  }

  void Ordenar(Node n) {
    newX[posnewX]=int (n.value);
    n.order= true;
    posnewX++;
  }

  void irArriba(Node n) {
    acomodar(Trunk[int(n.parent)]);
  }
}
