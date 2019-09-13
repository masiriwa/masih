//movement
void forward(int spd){

//=========FORWARD==================
lcd.clear();
//==================================
lcd.setCursor(3,0);
lcd.print("I'm moving"); 
lcd.setCursor(4,1);
lcd.print("forward");
//===================================
analogWrite(motorAe,spd);//slow
analogWrite(motorBe,spd);
//===================================
digitalWrite(motorAb,LOW);
digitalWrite(motorBb,LOW);
digitalWrite(motorAf,HIGH);
digitalWrite(motorBf,HIGH);
}

void backward(int spd){
//========BACKWARD===================
lcd.clear();
lcd.setCursor(0,0);
lcd.print("obstacle ahead");
lcd.setCursor(0,1);
lcd.print("moving backward");
//===================================
analogWrite(motorAe,spd);
analogWrite(motorBe,spd);
digitalWrite(motorAf,LOW);
digitalWrite(motorBf,LOW);
digitalWrite(motorAb,HIGH);
digitalWrite(motorBb,HIGH);
}
void left(int spd){
//========TURN LEFT==================
lcd.clear();
lcd.setCursor(3,0);
lcd.print("turning left"); 
analogWrite(motorAe,spd);
analogWrite(motorBe,spd);
digitalWrite(motorAf,HIGH);
digitalWrite(motorAb,LOW);
digitalWrite(motorBf,LOW);
digitalWrite(motorBb,HIGH);
}
void stopMovement(){
analogWrite(motorAe,0);
analogWrite(motorBe,0);
}

