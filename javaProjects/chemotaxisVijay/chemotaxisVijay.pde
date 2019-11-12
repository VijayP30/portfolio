Bacteria [] b;
int i=0;
int score=0;
void setup()   
{     
   size(1000,1000);
   b = new Bacteria [500];
   for(int i =0; i<b.length; i++)
   {
     b[i]= new Bacteria(width/2,height/2,20);
   }
}   
void draw()   
{   
   background(#AEB4B7);
   
   fill(255);
   ellipse(500,500,900,1000);
   fill(#4D03FF);
   ellipse(500,500,750,900);
   for(int i =0; i<b.length; i++)
   {
     b[i].bounce();
     b[i].show();
     if(mousePressed)
     {
       fill(#00ACFF);
       rect(mouseX-5,mouseY,10,4);
       if(mouseX>b[i].x-20 && mouseX<b[i].x+20 && mouseY>b[i].y-20 && mouseY<b[i].y+20)
       {
         b[i]=new Bacteria(0,0,0);
         score++;
         System.out.println(score);
       }
     }
   }  
   b[0].killB();
   if(score>=500)
   {
     fill(#0D98FF);
     ellipse(500,500,750,900);
     fill(0);
     textSize(50);
     text("All Clean!",400,500);
   }
}  
