class OddballParticleTwo implements Particle//uses an interface
{
  double x, y, angle, speed;
  
  OddballParticleTwo()
  {
  x=width/2;
  y=height/2;
  speed=Math.random()*20;
  angle=(Math.PI*5)*Math.random()*6;
  }
  void move()
  {
  x+=Math.tan(angle)*speed*3;
  y+=Math.cos(angle)*speed;
  angle+=0.15;
  
  if(x>999){
    x=999;
  }else if(x<10){
    x=10;
  }
  
   if(y>999){
    y=999;
  }else if(y<10){
    y=10;
  } 
  }
  void show()
  {
    fill(255);
  ellipse((int)x, (int)y, 5,5);
  }
}
