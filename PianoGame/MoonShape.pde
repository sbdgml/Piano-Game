class MoonShape{
  float initX;
  float initY;
  float a = random(100,180);
  
  
  MoonShape(float newX, float newY){
  initX = newX;
  initY = newY;
  }
  
  void render(){
    pushMatrix();
    noStroke();
    translate(initX, initY);
      fill(255, 204, 0, random(120,250));
      circle(0, 0, a);
      fill(249, 242, 255);
      circle(50, -25, a +1);
    popMatrix();
  }

}
  
