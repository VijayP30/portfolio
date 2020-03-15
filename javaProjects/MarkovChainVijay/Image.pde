class Image
{
   PImage img;
   float imgX=0,imgY=0;
  
  public Image(){  
    img = loadImage("shrek.png"); 
  }

  void show(){
    image(img, imgX, imgY, 1000, 600);
  }
}
