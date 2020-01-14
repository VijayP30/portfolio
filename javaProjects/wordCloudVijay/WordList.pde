import java.util.*;
public class WordList 
{
  public List <Word> myList;
  public WordList(String []tokens)
  {
    myList=new ArrayList<Word>();
    for (String w : tokens)
    {
      boolean found=false;
      for (Word x : myList)
      {
        if(x.word.equals(w))
        {
          x.count++;
          found=true;
        }
      }
      if(!found)
      {
          myList.add(new Word(w));
      }
    }
  }
  public int countHighest()
  {
    int countHighest=0;
    for(Word s : myList)
    {
      if(s.count>countHighest)
        countHighest=s.count;
    }
    return countHighest;
  }
  public void displayS()
  {
    for (Word w: myList)
    {
       textSize(map(w.count,1,countHighest(),15,100));
       fill(random(255));
       if(w.count<=75)
       {      
         text(w.word,(float)(Math.random()*500)+170,(float)(Math.random()*500)+200);
       }
    }
  }
  public void displayB()
  {
    float theta=0;
    for (Word w: myList)
    {
       textSize(map(w.count,1,countHighest(),15,100));
       if(w.count>=75)
       {
         rotate(theta);
         fill(#FF0000);
         text(w.word,random(900),random(900)); 
         theta-=0.01;
       }
    }  
  }
}
    
