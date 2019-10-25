class rain
{
  float r=(int)(Math.random()*800);
  float y=(int)(Math.random()*height)-height;
  
  void fall()
  {
    y+=7;
    fill(0,10,200,180);
    ellipse(r,y,10,10);
    if(y>height)
    {
      r=(int)(Math.random()*800);
      y=(int)(Math.random()*200)-200;
    }
  }
}
