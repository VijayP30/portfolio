class Image implements Snow
{
   PImage img;
  float imgX=0,imgY=50;
  
  public Image(){  
    img = loadImage("santa.png");  
  }

  void show(){
    image(img, imgX, imgY, 350, 200);
  }
  void move()
  {
    imgX+=5;
    if(imgX>1100)
    {
       imgX=-350;
    }
  }
}
