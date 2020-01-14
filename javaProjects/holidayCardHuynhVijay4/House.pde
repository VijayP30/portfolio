class House
{
  PImage imgR;
  public House()
  {
    imgR = loadImage("R.png");
  }
  void show()
  {
    //house
    fill(#7C4600);
    rect(400,400,400,400);
    //roof and chimney
    fill(#C6C6C6);
    rect(475,275,50,100);
    triangle(375,400,875,400,600,300);
    //stairs
    rect(550,735,110,15);
    rect(562,720,90,15);
    rect(576,705,70,15);
    //door
    fill(#C1B9F7);
    rect(580,605,65,100);
    //doorknob
    fill(0);
    ellipse(590,660,10,10);
    //window
    fill(0);
    if(image.imgX>475 && image.imgX<850)
    {
      fill(#FFCE1C);
    }
    rect(450,600,35,35);
    rect(450,635,35,35);
    rect(485,635,35,35);
    rect(485,600,35,35);
    
    rect(700,600,35,35);
    rect(700,635,35,35);
    rect(735,635,35,35);
    rect(735,600,35,35);
    if(image.imgX>475 && image.imgX<850)
    {
      image(imgR,485,610,35,35);
      fill(0);
      rect(495,645,2,25);
      rect(495,655,-15,2);
      rect(495,655,17,2);
    }
  }
}
