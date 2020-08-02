class LightningShape{
  float initX;
  float initY;
  float a = random(50,70);

  LightningShape(float newX, float newY){
  initX = newX;
  initY = newY;
  }

  void render(){
    pushMatrix();   
    translate(initX, initY);
    rotate(random(0.3, 1.3));
      beginShape();
      stroke(255,random(225,240),random(17,140));
      strokeWeight(random(8,13));
      line(0, 0, a, a);
      line(a, a, a/5, a/10*9);
      line(a/5, a/10*9, a/5*6, a/5*9);
      endShape();
      popMatrix();
  }

}
  
