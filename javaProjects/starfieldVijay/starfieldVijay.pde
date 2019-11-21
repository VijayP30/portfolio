//your code here...follow the steps listed on the repo..be creative! (like you have been)
NormalParticleRed [] nprArray;
NormalParticle [] npArray;
JumboParticle jb;
OddballParticle [] obArray;
OddballParticleTwo [] obtArray;
void setup(){
  //your code here
  size(1000,1000);
  nprArray=new NormalParticleRed[100];
  for(int i=0; i<nprArray.length;i++)
  {
    nprArray[i]=new NormalParticleRed();
  }
   npArray=new NormalParticle[500];
  for(int i=0; i<npArray.length;i++)
  {
    npArray[i]=new NormalParticle();
  }
  obArray=new OddballParticle[50];
  for(int i=0; i<obArray.length;i++)
  {
    obArray[i]=new OddballParticle();
  }
  obtArray=new OddballParticleTwo[50];
  for(int i=0; i<obArray.length;i++)
  {
    obtArray[i]=new OddballParticleTwo();
  }
  jb=new JumboParticle();
}
void draw(){
  //your code here
  background(0);
   for(int i=0; i<nprArray.length;i++)
  {
    nprArray[i].show();
    nprArray[i].move();
  }
  jb.show();
  jb.move();
      for(int i=0; i<npArray.length;i++)
  {
    npArray[i].show();
    npArray[i].move();
  }
        for(int i=0; i<obArray.length;i++)
  {
    obArray[i].show();
    obArray[i].move();
  }
  for(int i=0; i<obtArray.length;i++)
  {
    obtArray[i].show();
    obtArray[i].move();
  }
  fill(#8E8B8B);
  ellipse(25,25,75,75);
  fill(0);
  ellipse(50,50,25,25);
  fill(#FF0000);
  beginShape();
  vertex(55,45);
  vertex(60,60);
  vertex(45,55);
  endShape();
  
}
interface Particle
{
  
  void move();
  void show();

}
