import processing.serial.*;
Serial port;
String portName; //creating a store for port name
float  read_value_on_port;
//===================================
float valPin0;
float valPin1;
float valPin2;
float valPin3;
//=====================================
float VoltsOnPin0;
float VoltsOnPin1;
float VoltsOnPin2;
float VoltsOnPin3;
//================================AO CHANNEL 
float A0point_1_X=28;// making gragh start from 50x
float A0point_1_y=165;// making gragh start from 250y
float A0animate_point_2_X=21;// making gragh start from 50x
float A0Control;
//====================================
//================================A1 CHANNEL 
float A1point_1_X=275;// making gragh start from 50x
float A1point_1_y=165;// making gragh start from 250y
float A1animate_point_2_X=275;// making gragh start from 50x
float A1Control;
//================================A2 CHANNEL 
float A2point_1_X=28;// making gragh start from 50x
float A2point_1_y=314;// making gragh start from 250y
float A2animate_point_2_X=28;// making gragh start from 50x
float A2Control;
//================================A3 CHANNEL 
float A3point_1_X=275;// making gragh start from 50x
float A3point_1_y=314;// making gragh start from 250y
float A3animate_point_2_X=275;// making gragh start from 50x
float A3Control;
int ex=170;
int ad=20;
//==============================User Graphic02ssetup==================================
boolean ok001=true;
void setup(){
size(547,366);
portName=Serial.list()[0];// First we need to get the port name, serial.list ie a function or command that says hey list the "com names" but i only need that with index 0 "[0]" then store it in portName store which only stores strings (words)
port=new Serial(this,portName,9600);
port.bufferUntil('\n'); 
//==============================User Graphic02ssetup==================================
background(97,97,97); 
fill(0);
noStroke();
rect(28,42,488,282);
//=sq==================A0 CHANNEL=====================
//============
fill(0);
noStroke();
rect(28,42,242.5,133);
//===================A1 CHANNEL=====================
//===================
fill(0);
noStroke();
rect(275,42,242.5,133);// 273+2,
//===================A2 CHANNEL=====================
//===================
fill(0);
noStroke();
rect(28,191,242.5,133);//189+2
//===================A3 CHANNEL=====================
//===================
fill(0);
noStroke();
rect(275,191,242.5,133);// 273+2,189+2 
}
void draw(){
if(ok001==true){
userGraphics02();
userGraphics01();
}
if(ok001==false){
userGraphics01();
userGraphics02();
}
buttonDraw1();
textToScreen01();
printResults();
}
void keyPressed(){
}
void textToScreen01(){
//====================================TAB Atop 
fill(0);
textSize(12);
text("TAB A",69,17);
if (ok001==true){
fill(0);
textSize(10);
text("OSCILLOSCOPE",13,33); 
}  
//====================================TAB Btop
fill(0);
textSize(12);
text("TAB B",242,17);
if(ok001==false){ 
fill(0);
textSize(10);
text("SIGNAL COMPARATOR",13,33);
//====================================A0
fill(0);
textSize(14);
text("A0",241,186);
textSize(12);
text(VoltsOnPin0+"V",28,186);
//========================================A1
fill(0);
textSize(14);
text("A1",496,186);
textSize(12);
text(VoltsOnPin1+"V",278,186);
//========================================A2
fill(0);
textSize(14);
text("A2",241,335);
textSize(12);
text(VoltsOnPin2+"V",28,335);
//========================================A3
fill(0);
textSize(14);
text("A3",496,335);
textSize(12);
text(VoltsOnPin3+"V",278,335);
//===================================buttom bar
fill(97,97,97);
textSize(14);
text("# I am a Fundi",418,353);
}
}
void serialEvent(Serial port){
//=======================================voltage Maths
read_value_on_port= float(port.readStringUntil('\n'));
//================================================VOLTAGE ON ANALOG PIN A0
if(read_value_on_port>=1 && read_value_on_port<=240){
valPin0= read_value_on_port;
// accuracy
VoltsOnPin0=map(valPin0,1,240,0,5);
A0Control=map(VoltsOnPin0,0,5,0,105);
}  
//================================================VOLTAGE ON ANALOG PIN A1
if(read_value_on_port>=241 && read_value_on_port<=480){
valPin1= read_value_on_port;
VoltsOnPin1=map(valPin1,241,480,0,5);
A1Control=map(VoltsOnPin1,0,5,0,105);
}  
//================================================VOLTAGE ON ANALOG PIN A2
if(read_value_on_port>=481 && read_value_on_port<=720){
valPin2= read_value_on_port;
VoltsOnPin2=map(valPin2,481,720,0,5);
A2Control=map(VoltsOnPin2,0,5,0,105);
}
//================================================VOLTAGE ON ANALOG PIN A3
if(read_value_on_port>=721 && read_value_on_port<=960){
  valPin3= read_value_on_port;
  VoltsOnPin3=map(valPin3,721,960,0,5);
  A3Control=map(VoltsOnPin3,0,5,0,105);
}
}
void printResults(){
//println("("+pmouseX+","+pmouseY+")"); 
}