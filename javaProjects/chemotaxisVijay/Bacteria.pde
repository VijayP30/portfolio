 class Bacteria    
 {     
   private int x;
   private int y;
   private int radius;
   private int xvel;
   private int yvel;
   Bacteria(int x, int y, int radius)
   {
     this.x=x;
     this.y=y;
     this.radius=radius;
     xvel=(int)(Math.random()*10)-5;
     yvel=(int)(Math.random()*10)-5;
   }
   void bounce()
   {
     
     if(x>700 || x<300)
 xvel=-1*xvel;
 if(y>850 || y<200)
 yvel=-1*yvel;
 x = x + xvel;
 y = y + yvel;
   }
   void show()
   {
     fill(#039B27);
     ellipse(x,y,radius,radius);
   }
  void killB()
  { fill(#FFFFFF);
    triangle(mouseX-20,mouseY,mouseX-30,mouseY+30,mouseX-10,mouseY+30);
    rect(mouseX-5,mouseY,-20,5);
  }
 }   
