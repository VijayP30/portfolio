
SnowFlake[]mySnow=new SnowFlake[100];
Image image;
Tree tree;
ChristmasLights light;
void setup()
{
  size(800,800);
  for(int i=0; i<mySnow.length; i++){
    mySnow[i]=new SnowFlake();
  }
  image = new Image();
  tree = new Tree();
  light = new ChristmasLights();
}
void draw()
{
  background(0);
  image.show();
  image.move();
  tree.show();
  light.show();
  for(int i=0; i<mySnow.length; i++)
  {
    mySnow[i].show();
    mySnow[i].move();
  }
}

interface Snow 
{
  void move();
  void show();
}
