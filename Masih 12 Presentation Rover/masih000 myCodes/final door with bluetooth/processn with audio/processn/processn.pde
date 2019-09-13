import processing.serial.*;
import ddf.minim.*;
import ddf.minim.effects.*;

Minim minim;
AudioPlayer groove;

Serial usbport;
PImage p1;
PImage p2;
boolean forY=false;
boolean forN=false;
boolean forA=false;
float receivedVal;

void setup(){
size(500,400);
  minim = new Minim(this);
  groove = minim.loadFile("aud4.mp3", 2048);
  //===========================================================
usbport=new Serial(this,Serial.list()[1],9600);
 println(Serial.list());
 usbport.bufferUntil('\n');
p1=loadImage("fundi_bots_logo.png");
p1.resize(500,100);
p2=loadImage("BTOOTH.jpg");
p2.resize(50,50);
}
void draw(){
  background(166,166,166);
image(p1,0,0);

if(usbport.available()>0){
 image(p2,445,3);
 delay(100);
}

textSize(25);
  fill(0,0,255);
  text("ENTRANCE MONITORING SYSTEM",28,135);
  
textSize(15);
  fill(0,0,0);
  text(">> Press Y to accept/open",30,176);  
  
textSize(15);
  fill(0,0,0);
  text(">> Press N to ignore",30,220);    
  
  textSize(15);
  fill(0,0,0);
  text(">> Press A to Reset ",30,267);    
 //=================================================EXIT button 
 fill(0,0,255);
  stroke(0);//set boundary
  strokeWeight(3);//boundary weight
  ellipse(400,350,80,50);
  textSize(20);
  fill(93,240,149);
  text("EXIT",377,355);
  //===============================================================checkbutton
  if(mouseX>=360 && mouseX<=437 && mouseY>=326 && mouseY<=370){
  fill(255);
  stroke(255,0,0);//set boundary
  strokeWeight(3);//boundary weight
  ellipse(400,350,80,50);
    textSize(20);
  fill(93,240,149);
  text("EXIT",377,355);
}
  //============================================keys to press
  if (keyPressed){
  if((key=='y')||(key=='Y')){
    forY=true;
    while(forY==true){
    usbport.write('y');
    groove.pause();
    forY=false;
    }
  
  }
  if((key=='n')||(key=='N')){
   forN=true;
   while(forN==true){
   usbport.write('n');
   groove.pause();
   forN=false;
   }
  }
  if(key=='a'){
  forA=true;
  while(forA==true){
  usbport.write('a');
  forA=false;
  }
  }
  }
  fill(0);
  textSize(20);
  text(receivedVal,0,20);
  if (receivedVal>250){
     fill(0);
  textSize(20);
  text("Someone at the door",30,267+20*2);
  groove.loop();
   
  
  
}
  
 println(pmouseX+","+pmouseY);
  }
  void serialEvent(Serial usbPort){
  receivedVal=float(usbPort.readStringUntil('\n'));
  }