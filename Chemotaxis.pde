Walker [] bob;
int value;
void setup()
{
  size(500,500);
  bob = new Walker[300];
 for(int i = 0; i < 300; i++){
   bob[i] = new Walker();
 }
}//end setup


void draw()
{
  background(value);
  for(int i = 0; i < bob.length; i++){
    bob[i].show();
    bob[i].walk();
  }

}


   

class Walker
{
  int myColor;
   int myX, myY;
   Walker()
   {
     myColor=color((int)(Math.random( )*255),(int)(Math.random( )*255),(int)(Math.random( )*255));
     myX = myY = 250;
     
   }
   void walk()
   {
     
   if(mouseX>myX){
    myX=myX+(int)(Math.random()*5)-1;
   }
    else{
    myX=myX+(int)(Math.random()*5)-3;
   }
  if (mouseY>myY){
       myY = myY + (int)(Math.random()*7)+3;
  } else{
    myY=myY+(int)(Math.random()*3)-3;
   }
   }
   void show()
   {
     fill(myColor);
     ellipse(myX,myY,10,10);
  if(myX>500){
  myX=0;
}
if(myX<0){
  myX=500;
}
  if(myY>500){
  myY=0;
}
if(myY<0){
  myY=500;
}
   }
 }
 void mouseMoved(){

  value=value+100;
  if(value>255){
    value=0;
  }
 }
