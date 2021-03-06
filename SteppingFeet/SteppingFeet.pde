int a = 80, b = 40, s = 0;

void setup() {
  //Setup size
  size(800, 320);
}

void draw() {
  background(255);
  //Condition for limits 
  if (b >= (height-a/2)) s=1;
  if (b== a/ 2) s=0;
  if (s==0) b++;
  else b--;
  //Style rect
  rectMode(CORNER);
  noStroke();
  fill(0, 0, 0);
  //Interactivy, draw rectangles if mouse not is pressed
  if(mousePressed == false) for (int y = 0; y < 300; y = y+40) rect(0, y, 800, 20);
  //Draw squares
  rectMode(CENTER);
  fill(0, 0, 0);
  rect(320, b, a, a);
  rect(640, b, a, a);
  fill(255, 255, 0);
  rect(160, b, a, a);
  rect(480, b, a, a);
}