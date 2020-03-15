MarkovChain mc=new MarkovChain();
String [] cleanText;
Image image;
int i = 0;
void setup() {
  String [] str=loadStrings("sample.txt");
  String allText=join(str, " ");
  cleanText=allText.replaceAll("[^a-zA-Z\\. ]", "").toLowerCase().split("\\s+");//removes punct before splitting
  image=new Image();
  mc.trainMap(cleanText);
  size(1000,700);
  background(0);
  mc.printMap();
  image.show();
}
void draw()
{
    textSize(30);
    if(frameCount%120==0)
    {
      fill(0);
      rect(0,600,1000,500);
      fill(255);
      text(mc.generateText(cleanText[i]),50,650);
      i++;
    }
    if(i==cleanText.length)
    {
      i=0;
    }
}
