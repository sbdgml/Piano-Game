class RainShape{
  float initX = random(width);
  float initY = random(140,430);
  float yspeed = random(10,18);
  float sizeZ = random(5,10);

void render(){
    pushMatrix();   
    drawRainShape(0, 0, 8);
    popMatrix();
  }

void drawRainShape(float x, float y, float size) {
  x = initX;
  y = initY;
  size = sizeZ;
  fill(179, 204, 255, 170);
  noStroke();
  for (int i = 2; i < size; i++ ) {
    ellipse(x, y + i*4, i*2, i*2);
  }
}

void fall(){
    initY = initY +yspeed;
    yspeed = yspeed + 0.5;
    if(initY>450){
       initY = random(130,270); 
       yspeed = random(10,18);
    }
  }

}
