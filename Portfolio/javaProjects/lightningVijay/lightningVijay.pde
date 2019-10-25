int startX,startY,endX,endY,count,rain;
//rain r1;
int numDrops=20;
rain[]drops=new rain[numDrops];
void setup()
{
  size(800,800);
  startX=(int)(Math.random()*800);
  startY=0;
  endX=750;
  endY=750;
  count=0;
  rain=10;
  strokeWeight(5);
  background(#030303);
   for (int i = 0; i < drops.length; i++) {

    drops[i] = new rain();
    ///r1 = new rain();
  }
}
void draw()
{
   stroke(#000EFF);
   for (int i = 0; i < drops.length; i++) 
   {
     drops[i].fall();
   }
   if(frameCount%10==0)
  {
    startX=(int)(Math.random()*800);
    startY=0;
    endX=750;
    endY=750;
    count++;
  }
  fill(0,0,0,25);
  rect(-5,-5,820,820);
  while(endX<800)
  {
    endX=startX+(int)(Math.random()*21)-10;
    endY=startY+(int)(Math.random()*10);
    stroke(#FAFF00);
    line(startX,startY,endX,endY);
    startX=endX;
    startY=endY;
  }
}
