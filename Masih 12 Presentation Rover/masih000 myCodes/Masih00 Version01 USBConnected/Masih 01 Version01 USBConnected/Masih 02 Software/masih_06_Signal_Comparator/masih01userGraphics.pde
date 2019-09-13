void userGraphics01(){
//==========================================
if(ok001==true){
fill(166,166,166);
noStroke();
//rect(26,40,494,298);
//==========================================
fill(0);
noStroke();
rect(26+2,40+2,494-2-2,282);
}
//==========================================
fill(166,166,166);
noStroke();
rect(4,40,21,298);  
//===========================================
fill(166,166,166);
noStroke();
rect(521,40,21,298); 
//=========================================== 
fill(166,166,166);
noStroke();
rect(4,339,538,17);   
//==========================================
//fill
beginShape();
fill(166,166,166);
stroke(214,214,214);
vertex(4,19);
bezierVertex(153-ex+ad,19, 153-ex+ad,19,157-ex+ad,19);
bezierVertex(159-ex+ad,19, 157-ex+ad,4,159-ex+ad,4);
bezierVertex(209-ex,4,209-ex,4,328-ex,4);
bezierVertex(337-ex,5,335-ex,12,346-ex,19);
bezierVertex(417,19,417,19,502,19);
bezierVertex(511,5,511,5,519,4);
bezierVertex(525,4,525,4,541,4);
bezierVertex(541,15,541,15,541,38);
bezierVertex(194,38,194,38,4,38);
endShape(CLOSE);
//=========================================
}
void userGraphics02(){
//==========================================A0
//===========BOUNDARIES
//===================top
fill(255,0,0);
noStroke();
rect(26,40,246.5-3,3);
//===================left
fill(166,166,166);
noStroke();
rect(26,40,3,148.5-1);
//===================buttom
fill(166,166,166);
noStroke();
rect(26,175-0.5,246.5-3,13.5);
//===================
//===================last right
fill(166,166,166);
noStroke();
rect(269,40,3,148.5-1);
//=========================================short lines
stroke(255);
strokeWeight(1);
line(26,165,28,165);//26,42+133-10,28,170
line(26,52,28,52);//26,42+10,28,52
//============================GRAPH CALCURATION=========A0
A0animate_point_2_X=A0animate_point_2_X+1;
stroke(228,255,228);
strokeWeight(1);
line(A0point_1_X,A0point_1_y,A0animate_point_2_X,165-A0Control);
A0point_1_X=A0animate_point_2_X;
A0point_1_y=165-A0Control; 
if(A0animate_point_2_X > 269){// reseting
//===================
fill(0);
noStroke();
rect(28,42,242.5,133);
A0animate_point_2_X=28;
A0point_1_X=28;// making gragh start from 28x
A0point_1_y=165;// making gragh start from 165 y  
}
//==========================================A1
//================BOUNDARIES
//=================TOP
fill(255,0,0);
noStroke();
rect(273+2,40,246.5-3,3);
//====================LEFT
fill(166,166,166);
noStroke();
rect(273,40,3,148.5-1);
//=================BUTTOM
fill(166,166,166);
noStroke();
rect(273+2,175-0.5,246.5-3,13.5);
//====================RIGHT
fill(166,166,166);
noStroke();
rect(516.5,40,3,148.5-1);
//=========================================short lines
stroke(255);
strokeWeight(1);
line(273,165,275,165);//26,42+133-10,28,170
line(273,52,275,52);//26,42+10,28,52
//============================GRAPH CALCURATION=========
A1animate_point_2_X=A1animate_point_2_X+1;
stroke(228,255,228);
strokeWeight(1);
line(A1point_1_X,A1point_1_y,A1animate_point_2_X,165-A1Control);
A1point_1_X=A1animate_point_2_X;
A1point_1_y=165-A1Control;
if(A1animate_point_2_X > 516){// reseting
//===================
fill(0);
noStroke();
rect(275,42,242.5,133);// 273+2,
A1animate_point_2_X=275;
A1point_1_X=275;// making gragh start from 21x
A1point_1_y=165;// making gragh start from 120 y  
}
//==========================================A2
//=======BOUNDARIES
//============TOP
fill(166,166,166);
noStroke();
rect(26,189+0.5,246.5-3,3);
//=================LEFT
fill(166,166,166);
noStroke();
rect(26,190,3,148.5-5);
//============BUTTOM
fill(166,166,166);
noStroke();
rect(26,324,246.5-3,13.5);
//=================RIGHT
fill(166,166,166);
noStroke();
rect(269,189,3,148.5);
//=========================================short lines
stroke(255);
strokeWeight(1);
line(26,314,28,314);//26,191+133-10,28,170
line(26,201,28,201);//26,191+10,28,52
//============================GRAPH CALCURATION=========
A2animate_point_2_X=A2animate_point_2_X+1;
stroke(228,255,228);
strokeWeight(1);
line(A2point_1_X,A2point_1_y,A2animate_point_2_X,314-A2Control);
A2point_1_X=A2animate_point_2_X;
A2point_1_y=314-A2Control;
if(A2animate_point_2_X > 269){// reseting
//===================
fill(0);
noStroke();
rect(28,191,242.5,133);//189+2
 A2animate_point_2_X=28;
 A2point_1_X=28;// making gragh start from 21x
 A2point_1_y=314;// making gragh start from 120 y 
}
//==========================================A3
//==============BOUNDARIES
//================TOP
fill(166,166,166);
noStroke();
rect(273,189+0.5,246.5,3);
//================LEFT
fill(166,166,166);
noStroke();
rect(273,189,3,148.5);
//================BUTTOM
fill(166,166,166);
noStroke();
rect(273+2,324,246.5-3,13.5);
//================RIGHT
fill(166,166,166);
noStroke();
rect(516.5,189,3,148.5);
//=========================================short lines
stroke(255);
strokeWeight(1);
line(273,314,275,314);//26,191+133-10,28,170
line(273,201,275,201);//26,191+10,28,52
//============================GRAPH CALCURATION=========
A3animate_point_2_X=A3animate_point_2_X+1;
stroke(228,255,228);
strokeWeight(1);
line(A3point_1_X,A3point_1_y,A3animate_point_2_X,314-A3Control);
A3point_1_X=A3animate_point_2_X;
A3point_1_y=314-A3Control; 
if(A3animate_point_2_X > 516){// reseting
//===================not to be here
fill(0);
noStroke();
rect(275,191,242.5,133);// 273+2,189+2
A3animate_point_2_X=275;
A3point_1_X=275;// making gragh start from 21x
 A3point_1_y=314;// making gragh start from 120 y  
}
//==========================================
fill(166,166,166);
noStroke();
rect(4,40,21,298);  
//===========================================
fill(166,166,166);
noStroke();
rect(521,40,21,298); 
//===========================================  
fill(166,166,166);
noStroke();
rect(4,339,538,17);   
//==========================================
//fill
beginShape();
fill(166,166,166);
stroke(214,214,214);
vertex(4,19);
bezierVertex(53,19, 100,19,157+ad,19);
bezierVertex(159+ad,19, 157+ad,4,159+ad,4);
bezierVertex(209,4,209,4,328,4);
bezierVertex(337,5,335,12,346,19);
bezierVertex(417,19,417,19,502,19);
bezierVertex(511,5,511,5,519,4);
bezierVertex(525,4,525,4,541,4);
bezierVertex(541,15,541,15,541,38);
bezierVertex(194,38,194,38,4,38);
endShape(CLOSE);
//=========================================
 }
 