class SnowFlake implements Snow
{
 float x = (float)Math.random()*width;
  float y = (float)Math.random()*height;
  float r = (float)Math.random()*20;
  float speed=(float)(Math.random()*5)+1;
 
  public SnowFlake(){
  }
 
  public void move(){
   y+=speed;
   if(y > height){
     y = 0;
     x = (float)Math.random()*width;
   }
  }
   public void show(){
      fill(#FFFFFF);
   ellipse(x, y, r, r);
      rect(0, 750, 1950, 70);
    }
}
