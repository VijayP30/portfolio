class Image implements Snow
{
   PImage img;
   float imgX=0,imgY=50;
  
  public Image(){  
    img = loadImage("santa.png"); 
  }

  void show(){
    image(img, imgX, imgY, 350, 200);
    if(imgX<850 && imgX>475)
    {
    fill(#FF0000);
    rect(482,250,35,35);
    fill(#F5FA03);
    rect(482,260,35,10);
    rect(490,250,10,35);
    }
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
