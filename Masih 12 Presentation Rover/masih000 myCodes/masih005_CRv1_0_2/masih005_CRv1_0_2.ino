/*This code has been written by Masiriwa Henry Fundi.
making it slower control,LCD
*/
#include <LiquidCrystal.h>
LiquidCrystal lcd(7,6,5,4,3,2);
//===============================
int motorBe=9;//motor B enable
int motorBf=14;// motor B forward
int motorBb=15;// motor B backward
//================================
int motorAe=10;//motor A enable
int motorAf=17;// motor A forward
int motorAb=18;// motor A backward
//================================
int power=11;
int trigPin =12;  
int echoPin =13;
int gnd=12;
long duration, distance_cm; 
void setup(){
pinMode(motorBe,OUTPUT); 
pinMode(motorBf,OUTPUT);
pinMode(motorBb,OUTPUT); 
pinMode(motorAe,OUTPUT);
pinMode(motorAf,OUTPUT); 
pinMode(motorAb,OUTPUT); 

//================================
pinMode(power,OUTPUT);
pinMode(trigPin, OUTPUT);// set the trig pin to output (Send sound waves)
pinMode(echoPin, INPUT);// set the echo pin to input (recieve sound waves)
pinMode(gnd,OUTPUT);
digitalWrite(power,HIGH);
//digitalWrite(gnd,LOW);
Serial.begin(9600);
lcd.begin(16,2);
}
//================================
void loop(){
digitalWrite(trigPin, LOW);
delayMicroseconds(2); // for successfull sensor operations delays are required
digitalWrite(trigPin, HIGH);
delayMicroseconds(10);
digitalWrite(trigPin, LOW);
duration = pulseIn(echoPin, HIGH); // time taken to recieve an echo of the sent sound
distance_cm =((duration/2)/29.1);// convert the distance to centimeters
Serial.println(distance_cm);
if(distance_cm>=20 ){
//=========FORWARD============
lcd.clear();
//==============================
lcd.setCursor(3,0);
lcd.print("I'm moving"); 
lcd.setCursor(4,1);
 lcd.print("forward");
//=============================
analogWrite(motorAe,120);//slow
analogWrite(motorBe,120);
//============================
digitalWrite(motorAb,LOW);
digitalWrite(motorBb,LOW);
digitalWrite(motorAf,HIGH);
digitalWrite(motorBf,HIGH);
}
else if(distance_cm >=30){
//=========FORWARD============
 if(distance_cm >0 && distance_cm <31){
lcd.clear();
 }
digitalWrite(motorAe,HIGH);//move fast
digitalWrite(motorBe,HIGH);
//============================
digitalWrite(motorAb,LOW);
digitalWrite(motorBb,LOW);
digitalWrite(motorAf,HIGH);
digitalWrite(motorBf,HIGH);
}

else {
//========BACKWARD===========
lcd.clear();
 lcd.setCursor(0,0);
 lcd.print("obstacle ahead");
 lcd.setCursor(0,1);
 lcd.print("moving backward");
//==============================
analogWrite(motorAe,120);
analogWrite(motorBe,120);
digitalWrite(motorAf,LOW);
digitalWrite(motorBf,LOW);
digitalWrite(motorAb,HIGH);
digitalWrite(motorBb,HIGH);
delay(1500);
lcd.clear();
//========TURN LEFT==========
lcd.clear();
//==============================
lcd.setCursor(3,0);
lcd.print("turning left"); 
analogWrite(motorAe,120);
analogWrite(motorBe,120);
digitalWrite(motorAf,HIGH);
digitalWrite(motorAb,LOW);
digitalWrite(motorBf,LOW);
digitalWrite(motorBb,HIGH);
delay(1000);
digitalWrite(motorAf,LOW);
digitalWrite(motorBb,LOW);
lcd.clear();
}
}
