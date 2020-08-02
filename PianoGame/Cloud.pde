class Cloud{
  float initX;
  float initY;
  
  
  Cloud(float newX, float newY){
  initX = newX;
  initY = newY;
  }
  
  void render(){
    pushMatrix();
    fill(random(256),random(256),random(256));
    noStroke();
    translate(initX, initY);
      beginShape();
        circle(0, 0, 75);
        circle(25, 20, 85);
        circle(80, 25, 95);
        circle(134, 20, 85);
        circle(38, -20, 83);
        circle(80, -20, 90);
        circle(120, -30, 75);
        circle(153, -30, 45);
        circle(168, 5, 70);
      endShape();
    popMatrix();
  }

}
  
  
 
