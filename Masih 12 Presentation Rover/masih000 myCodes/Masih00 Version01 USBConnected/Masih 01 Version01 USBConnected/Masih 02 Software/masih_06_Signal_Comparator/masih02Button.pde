void buttonDraw1(){
//=========user graphic01 activation 
if(mouseX>=10 && mouseX<=163 && mouseY>=7 &&mouseY<=17){
//==========================================
beginShape();
fill(200,200,200);
stroke(214,214,0);
vertex(4,19);
bezierVertex(153-ex+ad,19, 153-ex+ad,19,157-ex+ad,19);
bezierVertex(159-ex+ad,19, 157-ex+ad,4,159-ex+ad,4);
bezierVertex(209-ex,4,209-ex,4,328-ex,4);
bezierVertex(337-ex,5,335-ex,12,346-ex,19);
endShape(CLOSE);
}
if(mousePressed){ 
if(mouseX>=10 && mouseX<=163 && mouseY>=7 &&mouseY<=17){
//==========================================
beginShape();
fill(166,166,166);
stroke(214,214,0);
vertex(4,19);
bezierVertex(153-ex+ad,19, 153-ex+ad,19,157-ex+ad,19);
bezierVertex(159-ex+ad,19, 157-ex+ad,4,159-ex+ad,4);
bezierVertex(209-ex,4,209-ex,4,328-ex,4);
bezierVertex(337-ex,5,335-ex,12,346-ex,19);
endShape(CLOSE);
ok001=true;
}
}
//=========user graphic02 activation 
if(mouseX>=179 && mouseX<=332 && mouseY>=7 &&mouseY<=17){
//==========================================
beginShape();
fill(200,200,200);
stroke(214,214,0);
vertex(157+ad,19);
bezierVertex(159+ad,19, 157+ad,4,159+ad,4);
bezierVertex(209,4,209,4,328,4);
bezierVertex(337,5,335,12,346,19);
endShape(CLOSE);
}
if(mousePressed){ 
if(mouseX>=179 && mouseX<=332 && mouseY>=7 &&mouseY<=17){
//==========================================
beginShape();
fill(166,166,166);
stroke(214,214,0);
vertex(157+ad,19);
bezierVertex(159+ad,19, 157+ad,4,159+ad,4);
bezierVertex(209,4,209,4,328,4);
bezierVertex(337,5,335,12,346,19);
endShape(CLOSE);
ok001=false;
}
}
}
void buttonDraw2(){ 
}