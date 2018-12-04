class Node {
  String id;
  String parent;
  String value;
  String left;
  String right;
  boolean order;
  boolean orderLeft;
  boolean orderRight;

  //raíz
  Node(int v) {
    id = "0";
    parent = null;
    value = str(v);
    left = null;
    right = null;
    order = false; 
    orderLeft = false;
    orderRight = false;
  }

//rama
  Node(int i, int p, int v) {
    id = str(i);
    parent = str(p);
    value = str(v);
    left = null;
    right = null;
    order = false;
    orderLeft = false;
    orderRight = false;
  }
}
