int [] fillColor = new int[3];

void setup(){
  int angle, x, y, count, centerX, centerY, r1, r2;
  size(700, 700);
  frameRate(10);
  background(254, 101, 106);
  angle = 0;
  x = 0;
  y = 0;
  count = 0;
  fillColor[0]= 255;
  fillColor[1]= 0;
  fillColor[2]= 0;
  centerX = width/2;
  centerY = height/2;
  r1 = 300;
  r2 = 200;
  drawCircles(x, y, angle, count, centerX, centerY, r1, r2);
}

void drawCircles(int x, int y, int angle, int count, int centerX, int centerY, int r1, int r2){
  translate(centerX, centerY);
  for(int i = 0; i <= 360; i++){
    angle++;
    x++;
    y++;
    count++;
    noStroke();
    fill(fillColor[0], fillColor[1], fillColor[2]);
    ellipse(r1*cos(radians(angle)), r1*sin(radians(angle)), 75, 75);
    ellipse(r2*-cos(radians(-angle)), r2*sin(radians(angle)), 55, 55);
    if(count == 4){
      fillColor[0] = 0;
      fillColor[1] = 0;
      fillColor[2] = 0;
    } else if (count == 6) {
      fillColor[0] = 28;
      fillColor[1] = 156;
      fillColor[2] = 222;    
    } else if (count == 10) {
      fillColor[0] = 255;
      fillColor[1] = 255;
      fillColor[2] = 255;
    } else if (count == 12) {
      fillColor[0] = 255;
      fillColor[1] = 0;
      fillColor[2] = 0;
      count = 0;
    }
  }
}