//====== for bt
#include <SoftwareSerial.h>
//===================================================
#include <LiquidCrystal.h>
//#include <Servo.h>
//======================BT code
int bluetoothTx=10;//===========================================================changed from pin 7
int bluetoothRx=9;//============================================================changed from 6
int Btpositive=12;
int Btnegative=11;
SoftwareSerial bluetooth(bluetoothTx,  bluetoothRx);
//=================================================
LiquidCrystal lcd(7,6,5,4,3,2);//................................................changed from 12,10 to pin 7 and pin 6
//Servo myservo;
//int led=13;
char signal;
boolean new_signal_received=false;
//int controlled=9;
int ldr=A0;
int buzzer=16;
int store;
boolean sense=false;
//int pos=0;
unsigned int freq;

boolean new_signal=false;

void setup(){
 //pinMode(led,OUTPUT);
 //pinMode(12,OUTPUT);
 
 lcd.begin(16, 2);  
//pinMode(controlled, OUTPUT);
pinMode(ldr,INPUT);
pinMode(buzzer,OUTPUT);
pinMode(Btpositive,OUTPUT);
pinMode(Btnegative,OUTPUT);
digitalWrite(Btnegative,LOW);
//myservo.attace(9);//......................................................changed from pin 10
delay(1000);
digitalWrite(Btpositive, HIGH);
delay(1000);
Serial.begin(9600);
//==================BT
bluetooth.begin(115200);
bluetooth.print("$");
bluetooth.print("$");
bluetooth.print("$");
delay(100);
bluetooth.println("U,9600,N");
bluetooth.begin(9600); 
//===============================
}

void loop(){
   if(bluetooth.available()>=0){
 signal=bluetooth.read();
 new_signal_received=true;
     }
 else{new_signal_received=false;}
 
store=analogRead(ldr);
lcd.setCursor(15,1);
lcd.print(signal);
bluetooth.println(store);
if(store>250&&sense==false){

//digitalWrite(controlled,HIGH);
tone(buzzer,3000);
digitalWrite(buzzer,HIGH);


}    
 
 
 if(new_signal_received=true){
 //Serial.println(signal);
 switch(signal){
 case 'y':
 sense=false;
  noTone(buzzer);
  digitalWrite(buzzer,LOW);
  //digitalWrite(controlled,LOW); 
 //digitalWrite(led,HIGH);
  // for(pos = 0; pos <= 120; pos += 1) // =========goes from 0 degrees to 180 degrees 
 //  {                               // =====in steps of 1 degree 
  //  myservo.write(120);              // ========tell servo to go to position in variable 'pos' 
  // delay(15);     // =========waits 15ms for the servo to reach the position 

 // } 
  lcd.setCursor(0,0);
lcd.print("ENTER DOOR OPEN");   //============== tell servo to go to position in variable 'pos' 
    //delay(2000); 
 break;
 case 'n':
 //digitalWrite(led,LOW); 
   sense=true;
  noTone(buzzer);
  digitalWrite(buzzer,LOW);
  //digitalWrite(controlled,LOW);
  lcd.setCursor(0,0);
lcd.print("NOT AVAILABLE      ");
 break;
 case  'a':
 
 sense=false;
 lcd.setCursor(0,0);
lcd.print("DOOR CLOSED       ");
break;
 default:// get back to the default
 break;// breakout 
    }
 }

}
