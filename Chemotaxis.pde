Bacteria [] Bob;
void setup()
{
  Bob = new Bacteria[500];
  for(int i = 0;i<Bob.length;i++){
  Bob[i] = new Bacteria(50,50);
  }
  size(300,300);
}
void draw()
{
  background(100);
  for(int i = 0; i< Bob.length;i++){
  Bob[i].show();
  Bob[i].walk();
  }
}
class Bacteria
{
  int myX,myY,mySize;
  Bacteria(int x,int y){
  myX=x;
  myY=y;
  mySize = ((int)((Math.random()*30)+10));
  }
  void show(){
    int myColor =  color ((int)(Math.random()*255),(color)(int)(Math.random()*255),(color)(int)(Math.random()*255));
    fill(myColor,10);
    stroke(myColor);
    ellipse(myX,myY,mySize,mySize);   
  }
  void walk(){
   if(mouseX>myX){
  myX=myX+(int)(Math.random()*5)-1;
   }
  else{
  myX=myX+(int)(Math.random()*5)-3;
  }
    if(mouseY>myY){
  myY= myY+(int)(Math.random()*5)-1;
  }
  else{
  myY=myY+((int)(Math.random()*5)-3);
    }
  }
}

