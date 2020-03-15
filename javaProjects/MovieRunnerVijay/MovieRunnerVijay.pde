import java.util.*;
String [] wordList; 
int size;
int i =0;
MovieList m;

void setup()
{
 wordList = loadStrings("wordList.txt");
 size = wordList.length;
 background(0);
 size(450,500);
}
void draw()
{
  if(frameCount%60==0)
  {
    i++;
    if(i==wordList.length-1)
    {
      i=0;
    }
  }
  background(0);
  m = new MovieList(wordList[i]);
  m.loadMovies();
  fill(255);
  textSize(30);
  text("" + m.getAverageScore(),10,30);
  text("Keyword: " + m.word,10,70);
  text(m.overallComment(),10,110);
  rect(100,400,50,-2* m.getFour());
  rect(150,400,50,-2* m.getThree());
  rect(200,400,50,-2* m.getTwo());
  rect(250,400,50,-2* m.getOne());
  rect(300,400,50,-2* m.getZero());
  rect(90,405,270,5);
  textSize(20);
  text("" + 4,120,435);
  text("" + 3,170,435);
  text("" + 2,220,435);
  text("" + 1,270,435);
  text("" + 0,320,435);
  text("Rating",195,460);
}
