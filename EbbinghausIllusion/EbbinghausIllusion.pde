int MINX = 300, MINY = 200, MAXX = 400, MAXY = 300, x, y;
boolean f1, f2;

//Initial values
void setup() {
  size(800, 600);
  frameRate(100);
  background(250, 250, 250);

  x = MINX;
  y = MINY;
}

//Draw
void draw() {
  
  background(250, 250, 250);

  if(x > MAXX)
    f1 = false;
  if(x < MINX)
    f1 = true;
  if(y > MAXY)
    f2 = false;
  if(y < MINY)
    f2 = true;
  
  if(f1){
    x++;
    y++;
  }else{
    x--;
    y--;
  }
  
  paintOrangeCircle(x, y, 290-x, 260-x);
  
}

//Paint the irange circle, x = x coor, y = y coor, r = radio separation betweem circles, a = radio gray circles
void paintOrangeCircle(int x, int y, int r, int a) {
  pushMatrix();
  noStroke();
  fill(230, 128, 56);
  ellipse(x, y, 60, 60);
  popMatrix();
  //Print small circles
  for(int i=0; i<360; i+=60){
    pushMatrix();
    fill(146, 164, 186);
    translate(x + a * (sin(radians(i))), y - a  * (cos(radians(i))));
    ellipse(0, 0, r, r);
    popMatrix();
  }
}