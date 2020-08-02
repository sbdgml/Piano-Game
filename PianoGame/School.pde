class School{
  
  School(){}
  
  void render(){
  
  pushMatrix();
  
  fill(249, 242, 255);
  noStroke();
  rect(0, 490, 800, 170);
  
  stroke(0);
  line(0, 500, 800, 500);
  line(0, 530, 800, 530);
  line(0, 560, 800, 560);
  line(0, 590, 800, 590);
  line(0, 620, 800, 620);
  
  fill(210, 210, 210);
    circle(90, 590, 30);
  circle(140, 590, 30);
  circle(190, 575, 30);
  circle(240, 575, 30);
  circle(290, 590, 30);
  circle(340, 590, 30);
  circle(390, 620, 30);
  circle(440, 590, 30);
  circle(490, 590, 30);
  circle(540, 620, 30);
  circle(590, 620, 30);
  circle(640, 635, 30);
  
  textSize(20);
  fill(0);
  text("T", 83, 595);
  text("T", 133, 595);
  text("Y", 183, 580);
  text("Y", 233, 580);
  text("T", 283, 595);
  text("T", 333, 595);
  text("E", 383, 625);
  text("T", 433, 595);
  text("T", 483, 595);
  text("E", 533, 625);
  text("E", 583, 625);
  text("W", 633, 640);
  
  popMatrix();
}
}
