//Initial Values
void setup() {

  size(900, 600);

  background(255, 255, 0);
  noStroke();
  
  //Define coor points
  int[] x = {150, 450, 750};
  int[] y = {150, 450};
  
  //Print all figures
  for(int i=0; i<x.length; i++)
    for(int j=0; j<y.length; j++)
      paintCircle(x[i], y[j], 70, 30, 50, 4);
}

void paintCircle(int x, int y, int a, int w, int h, int g) {
  noFill();
  //Paint white arcs
  for (int i=0; i<360; i+=45){
    pushMatrix();
    stroke(255);
    strokeWeight(g);
    translate(x + a * sin(radians(i)), y - a * cos(radians(i)));
    rotate(radians(i));
    arc(0, 0, w, h, PI / 2, 3 * PI / 2);
    popMatrix();
  }
  //Paint black arcs
  for (int i=0; i<360; i+=45){
    pushMatrix();
    stroke(0);
    strokeWeight(g);
    translate(x + a * sin(radians(i)), y - a * cos(radians(i)));
    rotate(radians(i));
    arc(0, 0, w, h, - PI / 2, PI / 2);
    popMatrix();
  }
  //Paint blue ellipses
  fill(0, 0, 255);
  for (int i=0; i<360; i+=45){
    pushMatrix();
    noStroke();
    translate(x + a * sin(radians(i)), y - a * cos(radians(i)));
    rotate(radians(i));
    ellipse(0, 0, w-g, h-g);
    popMatrix();
  }
}   