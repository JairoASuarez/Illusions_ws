int timer = 0;
float r = 0;

//Initial configs
void setup(){  
  size(700, 700);
  background(250, 250, 250);    
}

//Draw
void draw(){
  //Draw every 2ms
  if(millis()-timer >= 2){
    background(250, 250, 250);
    //Draw center square
    drawRect(350, r+=0.01);
    //Draw four squares interactive with mouse
    drawRects(0,0,size_func(mouseX), 0);
    drawRects(700,0,size_func(mouseX), PI/2);
    drawRects(700,700,size_func(mouseX), PI);
    drawRects(0,700,size_func(mouseX), 3*PI/2);
    //Update timer
    timer = millis();
  }  
}

void drawRect(int s, float r){
  pushMatrix();
  //Put in the center
  translate(350, 350);
  //Rotate r
  rotate(r);
  noStroke();
  fill(20,20,255);
  rect(-s/2, -s/2, s, s);
  popMatrix();  
}

void drawRects(int x, int y, int s, float r){
  pushMatrix();
  //Trasnlate to x & y coor
  translate(x, y);
  //Rotate r
  rotate(r);
  noStroke();
  fill(255,100,100);
  rect(0, 0, s, s);
  popMatrix();
}

//Function used to control the squares width
int size_func(int x){
  return int((-pow((x-350),2)+122500)*0.002916667);
}