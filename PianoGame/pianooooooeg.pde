import arb.soundcipher.*;
import arb.soundcipher.constants.*;
char[] keys = {'q','2','w','3','e','r','5','t','6','y','7','u','i','9','o','0','p'};
int[] black_key_indexes = {1,3,6,8,10,13,15}; 
int[] white_key_indexes = {0,2,4,5,7,9,11,12,14,16}; 
int[] highlightFrames = new int[keys.length];

PImage[] images;
PImage imageIndex;
import processing.sound.*;
SoundCipher sc;
Star star;
School school;
SoundFile file1;
SoundFile file2;
LightningShape light1;
LightningShape light2;
Cloud cloud;
StarShape star1;
MoonShape moon;
RainShape[] rains = new RainShape[30];
StarShape2[] stars = new StarShape2[30];
SnowShape[] snows = new SnowShape[40];

void setup() {
  background(249, 242, 255);
  size(800,1000);
  sc = new SoundCipher(this);
  
  String path = dataPath("");
  String[] filenames = listFileNames(path);
  
    images = new PImage[filenames.length];
  for (int i = 0; i < images.length; i++){
    
    imageIndex = loadImage("High.png");
  }
  
  for (int j = 0; j < rains.length; j++){
    rains[j] = new RainShape();
  }

  for(int j = 0; j < stars.length; j++){
    stars[j] = new StarShape2();
  }
  
  for(int j = 0; j < snows.length; j++){
    snows[j] = new SnowShape();
  }
}


void draw() {
  
  line(0, 500, 800, 500);
  line(0, 530, 800, 530);
  line(0, 560, 800, 560);
  line(0, 590, 800, 590);
  line(0, 620, 800, 620);
  fill(0);
  rect(0, 660, 800, 340);
  
  image(imageIndex, -30, 490, 150, 150);
  
    int w_index = 0; 
    int b_index = 0; 
    for(int i = 0; i < 10; i++) {
        int white_i = white_key_indexes[w_index];
        fill(255); 
        if(highlightFrames[white_i] > 0){
          highlightFrames[white_i]-= 30;
          fill(random(256),random(256),random(256)); 
        }
        rect(55+i*70,680,60,300);
        w_index++;
        if(i == 1 || i == 2 || i == 4 || i == 5 || i == 6 || i == 8 || i == 9){  
          //convert to index in array 
         int black_i =  black_key_indexes[b_index];
         fill(0); 
         if(highlightFrames[black_i] > 0){
            highlightFrames[black_i]-= 30;
            fill(random(256),random(256),random(256)); 
        }
         rect(55+i*70-20,680,30,200);
         b_index++; 
        }
    }  
    cloud = new Cloud(320,200);
    star1 = new StarShape(30,90);
    
      textSize(20);
  fill(0);
  text("Press 'z' : 'Twinkle Star'", 5, 25); 
  text("Press 'x' : 'School bell'", 5, 45); 
    
  //White KeyBoard Text
  textSize(30);
  fill(0);
  text("Q", 75, 950);
  text("W", 145, 950);
  text("E", 215, 950);
  text("R", 285, 950);
  text("T", 355, 950);
  text("Y", 425, 950);
  text("U", 495, 950);
  text("I", 570, 950);
  text("O", 635, 950);
  text("P", 710, 950);
  
  //Black KeyBoard Text
  textSize(20);
  fill(255);
  text("2", 115, 850);
  text("3", 185, 850);
  text("5", 325, 850);
  text("6", 395, 850);
  text("7", 465, 850);
  text("9", 605, 850);
  text("0", 675, 850);
  
}

void delete(){
   pushMatrix();
     fill(249, 242, 255);
     noStroke();
     rect(0,0,800,500);        
   popMatrix();
  }

void keyPressed() {
  int k = (int)((char)key);
  for(int i = 0; i < keys.length; i++) {
    int curKey = (int)keys[i];
    if(curKey == k) {
      sc.playNote(i + 60, 100, 0.5);
      highlightFrames[i] = 300;
    }
  }
  
  if(k == 'z'){
       star = new Star();
       star.render();
       file1 = new SoundFile(this, "star.mp3"); 
       file1.play();
    }
    
    if(k == 'x'){
       school = new School();
       school.render();
       file2 = new SoundFile(this, "school.mp3");
       file2.play();
    }
  
  //keyFunctions
   if(k == 'q' || k == '2'){
     delete(); 
     
   for (int j = 0; j < snows.length; j++){
       snows[j].render();
       snows[j].fall();
     }
     
     cloud.render();
  }
  
  if(k == 'w' || k =='0'){
     delete();
     cloud.render();
     star1.render();
  }
    if(k == '3' || k =='p'){
     delete();
     cloud.render();
  }
    if(k == 'e' || k =='9'){
     delete();
     for (int j = 0; j < rains.length; j++){
       rains[j].render();
       rains[j].fall();
     }
     cloud.render();
  }
    if(k == 'r' || k =='o'){
     delete();
     for (int j = 0; j < rains.length; j++){
       rains[j].render();
       rains[j].fall();
     }
     light1 = new LightningShape(random (0,400),random(80,350));
     light2 = new LightningShape(random(400,800),random(80,350));
     light1.render();
     light2.render();
     cloud.render();
  }
    if(k == '5' || k =='i'){
     delete();
     moon = new MoonShape(170,160);
     moon.render();
     star1.render();
     cloud = new Cloud(290,110);
     cloud.render();
  }
    if(k == 't' || k =='7'){
     delete();
     for (int j = 0; j < stars.length; j++){
       stars[j].render();
       stars[j].fall();
     }
      cloud.render();
  }
    if(k == '6' || k =='u'){
     delete();
     cloud.render();
     
  }
    if(k == 'y'){
     delete();
     moon = new MoonShape(200,170);
     moon.render();
     for (int j = 0; j < stars.length; j++){
       stars[j].render();
       stars[j].fall();
     }
     cloud.render();
  }
}
String[] listFileNames(String dir) {
  File file = new File(dir);
  if (file.isDirectory()) {
    String names[] = file.list();
    println(file.list().length);
    return names;
  } 
  else {
    
    return null;
  }
  
}
