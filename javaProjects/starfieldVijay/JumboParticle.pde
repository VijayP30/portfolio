class JumboParticle extends OddballParticle //uses inheritance
{
  double x, y, angle, speed;

JumboParticle(){
  x=width/2;
  y=height/2;
  speed=Math.random()*20;
  angle=(Math.PI*5)*Math.random()*6;
  //angle=(Math.PI/2)*Math.random();
}
void move(){
  x+=Math.cos(angle)*speed;
  y+=(Math.sin(angle)*speed);
  angle+=.01;
  
  if(x>510){
    x=width/2;
  }else if(x<490){
    x=width/2;
  }
  
   if(y>510){
    y=width/2;
  }else if(y<490){
    y=width/2;
  } 
}

void show(){
  fill(255);
  ellipse((int)x, (int)y, 50,50);
}

}
