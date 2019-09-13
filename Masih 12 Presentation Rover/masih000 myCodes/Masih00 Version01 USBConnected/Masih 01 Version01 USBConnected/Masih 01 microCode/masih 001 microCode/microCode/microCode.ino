#include <LiquidCrystal.h>
LiquidCrystal lcd(7,6,5,4,3,2);
//**************initialization*********
int pin0=A0;
int pin1=A1;
int pin2=A2;
int pin3=A3;
//===========
int valPin0;
int valPin1;
int valPin2;
int valPin3;
//==========
int mapValPin0;
int mapValPin1;
int mapValPin2;
int mapValPin3;
//**************setup*******************
void setup(){
pinMode(pin0,INPUT);
pinMode(pin1,INPUT);
pinMode(pin2,INPUT);
pinMode(pin3,INPUT);
lcd.begin(16,2);
Serial.begin(9600);
}
//*************loop*********************
void loop(){
valPin0=analogRead(pin0);
valPin1=analogRead(pin1);
valPin2=analogRead(pin2);
valPin3=analogRead(pin3);
//==========================================================
//=======================1==================================

float reMapped1=map(valPin0,0,1023,0,5);
lcd.clear();
lcd.setCursor(3,0);
lcd.print(reMapped1);
lcd.setCursor(0,0);
lcd.print("V1=");
//Serial.print(valPin0);
//Serial.print("  ");
//Serial.println(reMapped1);
//delay(50);
/*
//=======================2==================================

float reMapped2=map(valPin1,0,1023,0,5);
lcd.setCursor(11,0);
lcd.print(reMapped2);
lcd.setCursor(8,0);
lcd.print("V2=");
//=======================3==================================
float reMapped3=map(valPin2,0,1023,0,5);
lcd.setCursor(3,1);
lcd.print(reMapped3);
lcd.setCursor(0,1);
lcd.print("V3=");
//=======================4==================================

float reMapped4=map(valPin3,0,1023,0,5);
lcd.setCursor(11,1);
lcd.print(reMapped4);
lcd.setCursor(8,1);
lcd.print("V4=");*/
//==========================================
//1   /2 /3  /4 /5  /6 /7
mapValPin0=map(valPin0,0,1023,1,240);
mapValPin1=map(valPin1,0,1023,241,480);
mapValPin2=map(valPin2,0,1023,481,720);
mapValPin3=map(valPin3,0,1023,721,960);
  //=====================================
Serial.println(mapValPin0);
Serial.println(mapValPin1);
Serial.println(mapValPin2);
Serial.println(mapValPin3);
//delay (50);//8 this is a must 
}
//********************Explanation*********************
/*
 
*/
