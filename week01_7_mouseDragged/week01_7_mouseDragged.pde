//week01_7_mouseDragged
void setup(){
  size(500,500);
}
int x=200,y=250;
void draw(){
  background(#FFFFAA);
  rect(x,y,100,50);
}
void mouseDragged(){
  if(mousePressed && x<mouseX && mouseX<x+100 && y<mouseY && mouseY+50){
    x+=mouseX - pmouseX;
    x+=mouseY - pmouseY;
  }
}
