class ChristmasLights
{
  public ChristmasLights()
  {
  }
  void show()
  {
    fill(random(0,255),random(0,255),random(0,255));
    for(int i = 145; i < 220; i+=18)
    {
      ellipse(i,675,10,10);
    }
    for(int i = 125; i < 240; i+=18)
    {
      ellipse(i,710,10,10);
    }
    for(int i = 160; i < 200; i+=18)
    {
      ellipse(i,640,10,10);
    }
        for(int i = 165; i < 205; i+=20)
    {
      ellipse(i,605,10,10);
    }
    ellipse(175,550,20,20);
  }
}
