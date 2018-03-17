int angle = 0, centerX, centerY;

void setup() {
  size(600, 600);
  centerX = width/2;
  centerY =  height/2;
  frameRate(70);
  
}

void draw() {
  background(0, 0, 0);
  drawCross();
  drawPoint(10);
}

void drawCross(){
  pushMatrix();
  pushStyle();
  translate(centerX, centerY);
  stroke(80, 0, 200);
  strokeCap(SQUARE);
  strokeWeight(5);
  angle++;
  rotate(radians(angle));
  beginShape(LINES);
  for (int i = -180; i <= 180; i+= 60) {
    for (int j = -180; j <= 180; j+= 60) {
      pushMatrix();
      translate(i, j);
      vertex(-15, 0);
      vertex(15, 0);
      vertex(0, 15);
      vertex(0, -15);
      popMatrix();
    }
  }
  endShape();
  popStyle();
  popMatrix();
}

void drawPoint(int size){
  pushMatrix();
  translate(centerX, centerY);
  fill(255, 255, 0);
  ellipse(0, -120, size, size);
  ellipse(-90, 90, size, size);
  ellipse(90, 90, size, size);
  fill(0, 255, 0);
  ellipse(0, 0, size, size);
  popMatrix();
}