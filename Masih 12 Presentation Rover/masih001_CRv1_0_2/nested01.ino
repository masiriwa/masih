//sendTOBT()
//sendTOSerial()

void sendTOBT(){
//==========================================
//1   /2 /3  /4 /5  /6 /7
mapValPin0=map(duration,0,1023,1,240);
mapValPin1=map(moisture,0,1023,241,480);
//mapValPin2=map(valPin2,0,1023,481,720);
//mapValPin3=map(valPin3,0,1023,721,960);
  //=====================================
Serial.println(mapValPin0);
Serial.println(mapValPin1);
//Serial.println(mapValPin2);
//Serial.println(mapValPin3);
}
void sendTOSerial(){
Serial.print(duration);
Serial.print("  ");
Serial.print(distance_cm);
Serial.print("");
Serial.print("cm");
Serial.print(" ");
Serial.println(moisture);
delay(100);
 }
