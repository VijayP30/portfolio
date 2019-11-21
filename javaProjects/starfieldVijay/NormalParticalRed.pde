class NormalParticleRed
{
  
  double x,y,speed,angle;
  NormalParticleRed()
  {
    x=500;
    y=height/2;
    speed=Math.random()*5;
    angle=(Math.PI*2)*Math.random();
    //angle=(Math.PI/2)*Math.random();
  }
  
  void move()
  {
    x+=Math.tan(angle)*speed;
    y+=Math.tan(angle)*speed;
    angle+=0.05;
    if(x>999)
    {
      x=750;
    }
    else if(x<0)
    {
      x=750;
    }
    
    if(y>999)
    {
      y=750;
      
    }
    else if(y<0)
    {
      y=750;
    }
  }

  void show()
  {
    fill(#FF0000);
    if(x<=250)
    ellipse((int)x,(int)y,6,6);
    if(x>250&&x<500)
    ellipse((int)x,(int)y,5,5);
    if(x>=500&&x<750)
    ellipse((int)x,(int)y,4,4);
    if(x>=750)
    ellipse((int)x,(int)y,3,3);
  }
}
