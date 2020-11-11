// class tail
class Tail { 
  //array define
  int[] xprevpos = new int[70];
  int[] yprevpos = new int[70];

  //constructor
  Tail() {
  } 

  //
  void initarray() {
    for (int i = 0; i < xprevpos.length; i++) {
      xprevpos[i] = 0;
      yprevpos[i] = 0;
    }
  }

  void move() {

    //shifting the arrays   
    for (int i = 0; i < xprevpos.length -1; i++) {
      xprevpos[i] = xprevpos[i+1];
      yprevpos[i] = yprevpos[i+1];
    }
    //adding previous position
    xprevpos[xprevpos.length-1]=mouseX; 
    yprevpos[yprevpos.length-1]=mouseY;
  }

  void display() {

    //Display fuction for object
    for (int i = 0; i < xprevpos.length; i++) {
      noStroke();
      fill(#BC4141,255-i*2);
      rect(xprevpos[i], yprevpos[i], i, i);
    }
  }
}
