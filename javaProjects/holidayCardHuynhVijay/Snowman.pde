class Snowman
{
  int x;
  public Snowman()
  {
    x=0;
  }
  void show()
  {
    fill(#FFFFFF);
    ellipse(225+x, 720, 75, 75);
    ellipse(225+x, 665, 50, 50);
    fill(#FA7900);
    triangle(190+x, 665, 220+x, 670, 220+x, 660);
    fill(#000000);
    ellipse(215+x, 655, 5, 5);
    ellipse(225+x, 655, 5, 5);
    if(image.imgX<475 || image.imgX>800)
    {
      x+=1;
      if(x>670)
      {
        x=-225;
      }
    }

  }
  }
